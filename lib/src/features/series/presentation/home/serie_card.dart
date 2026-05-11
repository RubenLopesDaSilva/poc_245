import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_245/src/constant/app_sizes.dart';
import 'package:poc_245/src/features/series/model/serie.dart';
import 'package:poc_245/src/routing/app_router.dart';
import 'package:poc_245/src/utils/styled_text.dart';

class SerieCard extends StatelessWidget {
  const SerieCard({required this.serie, super.key});

  final Serie serie;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p24),
      child: GestureDetector(
        onTap: () {
          context.goNamed(
            RouteNames.episodes.name,
            pathParameters: {'serieId': serie.id},
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
              StyledText(serie.title, Sizes.p28, bold: true),
              gapH8,
              StyledText(serie.summary, Sizes.p12),
              gapH8,
              StyledText(serie.maturityRating, Sizes.p16, bold: true),
              gapH4,
              StyledText(
                'Nombre d\'épisodes : ${serie.episodes.length}',
                Sizes.p16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
