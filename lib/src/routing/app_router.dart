import 'package:go_router/go_router.dart';
import 'package:poc_245/src/features/series/presentation/home/series_list_screen.dart';

enum RouteNames { home, episodes, episodeReader }

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: RouteNames.home.name,
      builder: (context, state) => const SeriesListScreen(),
      // routes: [
      //   GoRoute(
      //     path: 'episodes',
      //     name: RouteNames.episodes.name,
      //     builder: (context, state) => EpisodesListScreen(),
      //     routes: [
      //       GoRoute(
      //         path: 'episode_reader',
      //         name: RouteNames.episodeReader.name,
      //         builder: (context, state) => EpisodeReaderScreend(),
      //       ),
      //     ],
      //   ),
      // ],
    ),
  ],
);
