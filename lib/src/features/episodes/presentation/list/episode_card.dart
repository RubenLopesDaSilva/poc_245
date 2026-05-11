import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poc_245/src/constant/app_sizes.dart';
import 'package:poc_245/src/routing/app_router.dart';
import 'package:poc_245/src/utils/styled_text.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({ required this.id, required this.title, required this.description, required this.sortie, required this.actors, required this.genre, required this.rating, super.key});
  
  final String id;
  final String title;
  final String description;
  final String sortie;
  final List<String> actors;
  final String genre;
  final int rating;


  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p24),
      child: GestureDetector(
        onTap: () {
          context.goNamed(RouteNames.episodeReader.name);
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(Sizes.p24)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StyledText(title, Sizes.p28, bold: true,),
              StyledText(description, Sizes.p16),
              StyledText(sortie, Sizes.p16),
              StyledText('Genre : $genre', Sizes.p16),
              StyledText('Rating : $rating/10', Sizes.p16),
              StyledText('Acteurs : ${actors.join(', ')}', Sizes.p16),
            ],
          ),
        ),
      ),
    );
  }
}