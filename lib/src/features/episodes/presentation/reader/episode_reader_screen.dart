import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:poc_245/src/constant/app_sizes.dart';
import 'package:poc_245/src/features/episodes/data/episodes_repository.dart';
import 'package:poc_245/src/features/series/data/series_repository.dart';
import 'package:poc_245/src/routing/app_router.dart';
import 'package:poc_245/src/utils/styled_text.dart';

class EpisodeReaderScreen extends ConsumerStatefulWidget {
  const EpisodeReaderScreen({
    required this.episodeId,
    required this.serieId,
    required this.videoUrl,
    super.key,
  });

  final String episodeId;
  final String serieId;
  final String videoUrl;

  @override
  ConsumerState<EpisodeReaderScreen> createState() =>
      _EpisodeReaderScreenState();
}

class _EpisodeReaderScreenState extends ConsumerState<EpisodeReaderScreen> {
  late final Player player = Player();

  late final VideoController controller = VideoController(player);

  @override
  void initState() {
    player.open(Media(widget.videoUrl));
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final serie = ref
        .read(seriesRepositoryProvider)
        .getSerieById(widget.serieId);
    final episode = ref
        .read(episodesRepositoryProvider)
        .getEpisodeById(widget.episodeId);
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colors.onTertiary,
      appBar: AppBar(
        toolbarHeight: Sizes.p80,
        backgroundColor: colors.onTertiary,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.p24),
          child: Column(
            children: [StyledText(episode.title, Sizes.p28, bold: true)],
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: Sizes.p40),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: Sizes.p32,
                ),
                onPressed: () {
                  final previousEpisode = ref
                      .read(episodesRepositoryProvider)
                      .getPreviousEpisode(serie, widget.episodeId);
                  context.goNamed(
                    RouteNames.episodeReader.name,
                    pathParameters: {
                      'episodeId': previousEpisode.id,
                      'serieId': widget.serieId,
                    },
                  );
                },
              ),
              gapW20,
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: Sizes.p32,
                ),
                onPressed: () {
                  final nextEpidsode = ref
                      .read(episodesRepositoryProvider)
                      .getNextEpisode(serie, widget.episodeId);
                  context.goNamed(
                    RouteNames.episodeReader.name,
                    pathParameters: {
                      'episodeId': nextEpidsode.id,
                      'serieId': widget.serieId,
                    },
                  );
                },
              ),
            ],
          ),
          gapH12,
          Center(
            child: Container(
              width: 1500,
              height: 750,
              color: colors.secondary,
              child: Center(
                child: Video(
                  controller: controller,
                  controls: AdaptiveVideoControls,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
