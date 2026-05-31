import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libtorrent_flutter/libtorrent_flutter.dart';
import 'package:media_kit/media_kit.dart';
import 'package:poc_245/src/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  await LibtorrentFlutter.init();
  runApp(const ProviderScope(child: MyApp()));
}
