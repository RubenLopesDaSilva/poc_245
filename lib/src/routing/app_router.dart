import 'package:go_router/go_router.dart';
import 'package:poc_245/src/features/episodes/presentation/list/episodes_list_screen.dart';
import 'package:poc_245/src/features/episodes/presentation/reader/episode_reader_screen.dart';
import 'package:poc_245/src/features/series/presentation/home/series_list_screen.dart';

enum RouteNames { home, episodes, episodeReader }

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: RouteNames.home.name,
      builder: (context, state) => const SeriesListScreen(),
      routes: [
        GoRoute(
          path: 'episodes/:serieId',
          name: RouteNames.episodes.name,
          builder: (context, state) {
            final id = state.pathParameters['serieId']!;
            return EpisodesListScreen(serieId: id);
          },
          routes: [
            GoRoute(
              path: 'episode_reader/:episodeId',
              name: RouteNames.episodeReader.name,
              builder: (context, state) {
                final id = state.pathParameters['episodeId']!;
                final serieId = state.pathParameters['serieId']!;
                return EpisodeReaderScreen(episodeId: id, serieId: serieId);
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
