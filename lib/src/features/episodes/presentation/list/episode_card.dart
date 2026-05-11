import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_245/src/constant/app_sizes.dart';
import 'package:poc_245/src/features/episodes/model/episode.dart';
import 'package:poc_245/src/routing/app_router.dart';
import 'package:poc_245/src/utils/styled_text.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({required this.episode, required this.seriesId, super.key});

  final Episode episode;
  final String seriesId;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p24),
      child: GestureDetector(
        onTap: () {
          context.goNamed(
            RouteNames.episodeReader.name,
            pathParameters: {'episodeId': episode.id, 'serieId': seriesId},
          );
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(Sizes.p24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StyledText(episode.title, Sizes.p28, bold: true),
              StyledText(episode.description, Sizes.p16),
              StyledText(episode.sortie, Sizes.p16),
              StyledText('Genre : ${episode.genre}', Sizes.p16),
              StyledText('Rating : ${episode.rating}/10', Sizes.p16),
              StyledText('Acteurs : ${episode.actors.join(', ')}', Sizes.p16),
            ],
          ),
        ),
      ),
    );
  }
}
