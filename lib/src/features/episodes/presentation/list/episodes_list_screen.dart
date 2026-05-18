import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poc_245/src/constant/app_sizes.dart';
import 'package:poc_245/src/features/episodes/model/episode.dart';
import 'package:poc_245/src/features/episodes/presentation/list/episode_card.dart';
import 'package:poc_245/src/features/series/data/series_repository.dart';
import 'package:poc_245/src/utils/styled_text.dart';

class EpisodesListScreen extends ConsumerStatefulWidget {
  const EpisodesListScreen({required this.serieId, super.key});

  final String serieId;

  @override
  ConsumerState<EpisodesListScreen> createState() => _EpisodesListScreenState();
}

class _EpisodesListScreenState extends ConsumerState<EpisodesListScreen> {
  @override
  Widget build(BuildContext context) {
    final serie = ref
        .read(seriesRepositoryProvider)
        .getSerieById(widget.serieId);
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
            children: [
              StyledText(
                // 'Series ${widget.serieId}'.hardcoded,
                serie.title,
                Sizes.p28,
                bold: true,
              ),
            ],
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
          Padding(
            padding: const EdgeInsets.all(Sizes.p12),
            child: StyledText('2 épisodes', Sizes.p20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EpisodeCard(
                seriesId: widget.serieId,
                episode: Episode(
                  id: '1',
                  title: 'Episode 1',
                  description: 'Description de l\'épisode 1',
                  sortie: '01.01.2022',
                  genre: 'Action',
                  rating: 8,
                  actors: ['Actor 1', 'Actor 2'],
                ),
              ),
              gapH12,
              EpisodeCard(
                seriesId: widget.serieId,
                episode: Episode(
                  id: '2',
                  title: 'Episode 2',
                  description: 'Description de l\'épisode 2',
                  sortie: '01.02.2022',
                  genre: 'Action',
                  rating: 7,
                  actors: ['Actor 3', 'Actor 4'],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
