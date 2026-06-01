import 'dart:io';

import 'package:flutter/services.dart';
import 'package:libtorrent_flutter/libtorrent_flutter.dart';
import 'package:path_provider/path_provider.dart';

class TorrentRepository {
  static final TorrentRepository _instance = TorrentRepository._internal();
  factory TorrentRepository() => _instance;
  TorrentRepository._internal();
  final engine = LibtorrentFlutter.instance;

  dynamic _currentTorrentId;

  Future<String> startStream(String torrent) async {
    final tempDir = await getTemporaryDirectory();
    final localTorrentPath = '${tempDir.path}/$torrent';

    final byteData = await rootBundle.load('assets/$torrent');

    final file = File(localTorrentPath);
    await file.writeAsBytes(
      byteData.buffer.asUint8List(
        byteData.offsetInBytes,
        byteData.lengthInBytes,
      ),
    );

    final downloadPath = '${tempDir.path}/assets';
    await Directory(downloadPath).create(recursive: true);

    _currentTorrentId = engine.addTorrentFile(localTorrentPath,downloadPath);

    final streamUrl = engine.startStream(_currentTorrentId);

    engine.torrentUpdates.listen((Map<dynamic,TorrentInfo> torrents) {
      final t = torrents[_currentTorrentId];
      if(t != null) {
        print("Progression : ${(t.progress * 100).toStringAsFixed(1)}% | Pairs : ${t.numSeeds}");
      }
    });

    return streamUrl.url;
  }

  Future<void> stopStream() async {
    if(_currentTorrentId != null) {
     engine.stopStream(_currentTorrentId);
     engine.removeTorrent(_currentTorrentId);
     _currentTorrentId = null;
    }
  }
}
