import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poc_245/src/features/episodes/model/episode.dart';
import 'package:poc_245/src/features/series/model/serie.dart';

class EpisodesRepository {
  List<Episode> getEpisodes() {
    return [
      Episode(
        id: '1',
        title: 'Episode 1 - Breaking Bad',
        actors: ['Walter White', 'Jesse Pinkman', 'Skyler White'],
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel augue nec augue bibendum tristique sit amet quis nulla. Cras mattis porttitor quam, at ullamcorper libero tempor in. Praesent eget eros malesuada, condimentum lorem vitae, rhoncus urna. Donec suscipit quis erat consectetur molestie. Donec ornare eros velit, sagittis consequat orci consequat eget. Duis commodo accumsan congue. Nam gravida odio quis porta luctus. Vivamus commodo egestas tristique. Vivamus blandit velit vel mauris interdum tempus. Duis et diam lectus. Pellentesque placerat, sem et vehicula malesuada, arcu orci tempus nunc, non pharetra sem enim sed tortor. Ut ultricies diam vel sapien vehicula scelerisque. Cras et posuere libero. Vivamus nibh nibh, fermentum vel malesuada vel, congue at felis. Pellentesque eget lorem at dolor pharetra imperdiet.',
        genre: 'Drama',
        rating: 8,
        sortie: '20.01.2008',
      ),
      Episode(
        id: '2',
        title: 'Episode 2 - Breaking Bad',
        actors: ['Walter White', 'Jesse Pinkman', 'Skyler White'],
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel augue nec augue bibendum tristique sit amet quis nulla. Cras mattis porttitor quam, at ullamcorper libero tempor in. Praesent eget eros malesuada, condimentum lorem vitae, rhoncus urna. Donec suscipit quis erat consectetur molestie. Donec ornare eros velit, sagittis consequat orci consequat eget. Duis commodo accumsan congue. Nam gravida odio quis porta luctus. Vivamus commodo egestas tristique. Vivamus blandit velit vel mauris interdum tempus. Duis et diam lectus. Pellentesque placerat, sem et vehicula malesuada, arcu orci tempus nunc, non pharetra sem enim sed tortor. Ut ultricies diam vel sapien vehicula scelerisque. Cras et posuere libero. Vivamus nibh nibh, fermentum vel malesuada vel, congue at felis. Pellentesque eget lorem at dolor pharetra imperdiet.',
        genre: 'Drama',
        rating: 8,
        sortie: '20.01.2008',
      ),
      Episode(
        id: '3',
        title: 'Episode 3 - Breaking Bad',
        actors: ['Walter White', 'Jesse Pinkman', 'Skyler White'],
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel augue nec augue bibendum tristique sit amet quis nulla. Cras mattis porttitor quam, at ullamcorper libero tempor in. Praesent eget eros malesuada, condimentum lorem vitae, rhoncus urna. Donec suscipit quis erat consectetur molestie. Donec ornare eros velit, sagittis consequat orci consequat eget. Duis commodo accumsan congue. Nam gravida odio quis porta luctus. Vivamus commodo egestas tristique. Vivamus blandit velit vel mauris interdum tempus. Duis et diam lectus. Pellentesque placerat, sem et vehicula malesuada, arcu orci tempus nunc, non pharetra sem enim sed tortor. Ut ultricies diam vel sapien vehicula scelerisque. Cras et posuere libero. Vivamus nibh nibh, fermentum vel malesuada vel, congue at felis. Pellentesque eget lorem at dolor pharetra imperdiet.',
        genre: 'Drama',
        rating: 8,
        sortie: '20.01.2008',
      ),
      Episode(
        id: '4',
        title: 'Episode 4 - Breaking Bad',
        actors: ['Walter White', 'Jesse Pinkman', 'Skyler White'],
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel augue nec augue bibendum tristique sit amet quis nulla. Cras mattis porttitor quam, at ullamcorper libero tempor in. Praesent eget eros malesuada, condimentum lorem vitae, rhoncus urna. Donec suscipit quis erat consectetur molestie. Donec ornare eros velit, sagittis consequat orci consequat eget. Duis commodo accumsan congue. Nam gravida odio quis porta luctus. Vivamus commodo egestas tristique. Vivamus blandit velit vel mauris interdum tempus. Duis et diam lectus. Pellentesque placerat, sem et vehicula malesuada, arcu orci tempus nunc, non pharetra sem enim sed tortor. Ut ultricies diam vel sapien vehicula scelerisque. Cras et posuere libero. Vivamus nibh nibh, fermentum vel malesuada vel, congue at felis. Pellentesque eget lorem at dolor pharetra imperdiet.',
        genre: 'Drama',
        rating: 8,
        sortie: '20.01.2008',
      ),
      Episode(
        id: '5',
        title: 'Episode 5 - Breaking Bad',
        actors: ['Walter White', 'Jesse Pinkman', 'Skyler White'],
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel augue nec augue bibendum tristique sit amet quis nulla. Cras mattis porttitor quam, at ullamcorper libero tempor in. Praesent eget eros malesuada, condimentum lorem vitae, rhoncus urna. Donec suscipit quis erat consectetur molestie. Donec ornare eros velit, sagittis consequat orci consequat eget. Duis commodo accumsan congue. Nam gravida odio quis porta luctus. Vivamus commodo egestas tristique. Vivamus blandit velit vel mauris interdum tempus. Duis et diam lectus. Pellentesque placerat, sem et vehicula malesuada, arcu orci tempus nunc, non pharetra sem enim sed tortor. Ut ultricies diam vel sapien vehicula scelerisque. Cras et posuere libero. Vivamus nibh nibh, fermentum vel malesuada vel, congue at felis. Pellentesque eget lorem at dolor pharetra imperdiet.',
        genre: 'Drama',
        rating: 8,
        sortie: '20.01.2008',
      ),
      Episode(
        id: '6',
        title: 'Episode 6 - Breaking Bad',
        actors: ['Walter White', 'Jesse Pinkman', 'Skyler White'],
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel augue nec augue bibendum tristique sit amet quis nulla. Cras mattis porttitor quam, at ullamcorper libero tempor in. Praesent eget eros malesuada, condimentum lorem vitae, rhoncus urna. Donec suscipit quis erat consectetur molestie. Donec ornare eros velit, sagittis consequat orci consequat eget. Duis commodo accumsan congue. Nam gravida odio quis porta luctus. Vivamus commodo egestas tristique. Vivamus blandit velit vel mauris interdum tempus. Duis et diam lectus. Pellentesque placerat, sem et vehicula malesuada, arcu orci tempus nunc, non pharetra sem enim sed tortor. Ut ultricies diam vel sapien vehicula scelerisque. Cras et posuere libero. Vivamus nibh nibh, fermentum vel malesuada vel, congue at felis. Pellentesque eget lorem at dolor pharetra imperdiet.',
        genre: 'Drama',
        rating: 8,
        sortie: '20.01.2008',
      ),
      Episode(
        id: '11',
        title: 'Episode 1 - Les Simpsons',
        actors: ['Homer Simpson', 'Marge Simpson', 'Bart Simpson'],
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel augue nec augue bibendum tristique sit amet quis nulla. Cras mattis porttitor quam, at ullamcorper libero tempor in. Praesent eget eros malesuada, condimentum lorem vitae, rhoncus urna. Donec suscipit quis erat consectetur molestie. Donec ornare eros velit, sagittis consequat orci consequat eget. Duis commodo accumsan congue. Nam gravida odio quis porta luctus. Vivamus commodo egestas tristique. Vivamus blandit velit vel mauris interdum tempus. Duis et diam lectus. Pellentesque placerat, sem et vehicula malesuada, arcu orci tempus nunc, non pharetra sem enim sed tortor. Ut ultricies diam vel sapien vehicula scelerisque. Cras et posuere libero. Vivamus nibh nibh, fermentum vel malesuada vel, congue at felis. Pellentesque eget lorem at dolor pharetra imperdiet.',
        genre: 'Comedy',
        rating: 7,
        sortie: '17.12.1989',
      ),
      Episode(
        id: '12',
        title: 'Episode 2 - Les Simpsons',
        actors: ['Homer Simpson', 'Marge Simpson', 'Bart Simpson'],
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel augue nec augue bibendum tristique sit amet quis nulla. Cras mattis porttitor quam, at ullamcorper libero tempor in. Praesent eget eros malesuada, condimentum lorem vitae, rhoncus urna. Donec suscipit quis erat consectetur molestie. Donec ornare eros velit, sagittis consequat orci consequat eget. Duis commodo accumsan congue. Nam gravida odio quis porta luctus. Vivamus commodo egestas tristique. Vivamus blandit velit vel mauris interdum tempus. Duis et diam lectus. Pellentesque placerat, sem et vehicula malesuada, arcu orci tempus nunc, non pharetra sem enim sed tortor. Ut ultricies diam vel sapien vehicula scelerisque. Cras et posuere libero. Vivamus nibh nibh, fermentum vel malesuada vel, congue at felis. Pellentesque eget lorem at dolor pharetra imperdiet.',
        genre: 'Comedy',
        rating: 7,
        sortie: '17.12.1989',
      ),
      Episode(
        id: '13',
        title: 'Episode 3 - Les Simpsons',
        actors: ['Homer Simpson', 'Marge Simpson', 'Bart Simpson'],
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel augue nec augue bibendum tristique sit amet quis nulla. Cras mattis porttitor quam, at ullamcorper libero tempor in. Praesent eget eros malesuada, condimentum lorem vitae, rhoncus urna. Donec suscipit quis erat consectetur molestie. Donec ornare eros velit, sagittis consequat orci consequat eget. Duis commodo accumsan congue. Nam gravida odio quis porta luctus. Vivamus commodo egestas tristique. Vivamus blandit velit vel mauris interdum tempus. Duis et diam lectus. Pellentesque placerat, sem et vehicula malesuada, arcu orci tempus nunc, non pharetra sem enim sed tortor. Ut ultricies diam vel sapien vehicula scelerisque. Cras et posuere libero. Vivamus nibh nibh, fermentum vel malesuada vel, congue at felis. Pellentesque eget lorem at dolor pharetra imperdiet.',
        genre: 'Comedy',
        rating: 7,
        sortie: '17.12.1989',
      ),
    ];
  }

  Episode getEpisodeById(String id) {
    return getEpisodes().firstWhere((episode) => episode.id == id);
  }

  List<Episode> getEpisodesByEpisodesIds(List<String> episodesIds) {
    return getEpisodes()
        .where((episode) => episodesIds.contains(episode.id))
        .toList();
  }

  Episode getNextEpisode(Serie serie, String episodeId) {
    final episodes = getEpisodesByEpisodesIds(serie.episodes);
    final currentIndex = episodes.indexWhere(
      (episode) => episode.id == episodeId,
    );
    if (currentIndex == -1 || currentIndex == episodes.length - 1) {
      return episodes.first;
    }
    return episodes[currentIndex + 1];
  }

  Episode getPreviousEpisode(Serie serie, String episodeId) {
    final episodes = getEpisodesByEpisodesIds(serie.episodes);
    final currentIndex = episodes.indexWhere(
      (episode) => episode.id == episodeId,
    );
    if (currentIndex == -1 || currentIndex == 0) {
      return episodes.last;
    }
    return episodes[currentIndex - 1];
  }
}

final episodesRepositoryProvider = Provider<EpisodesRepository>((ref) {
  return EpisodesRepository();
});
