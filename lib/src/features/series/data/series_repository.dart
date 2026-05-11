import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poc_245/src/features/series/model/serie.dart';

class SeriesRepository {
  List<Serie> getSeries() {
    return [
      Serie(
        id: '1',
        title: 'Breaking Bad',
        summary:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel augue nec augue bibendum tristique sit amet quis nulla. Cras mattis porttitor quam, at ullamcorper libero tempor in. Praesent eget eros malesuada, condimentum lorem vitae, rhoncus urna. Donec suscipit quis erat consectetur molestie. Donec ornare eros velit, sagittis consequat orci consequat eget. Duis commodo accumsan congue. Nam gravida odio quis porta luctus. Vivamus commodo egestas tristique. Vivamus blandit velit vel mauris interdum tempus. Duis et diam lectus. Pellentesque placerat, sem et vehicula malesuada, arcu orci tempus nunc, non pharetra sem enim sed tortor. Ut ultricies diam vel sapien vehicula scelerisque. Cras et posuere libero. Vivamus nibh nibh, fermentum vel malesuada vel, congue at felis. Pellentesque eget lorem at dolor pharetra imperdiet.',
        maturityRating: '18+',
        episodes: List.generate(10, (i) => '$i'),
      ),
      Serie(
        id: '2',
        title: 'Les Simpsons',
        summary:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel augue nec augue bibendum tristique sit amet quis nulla. Cras mattis porttitor quam, at ullamcorper libero tempor in. Praesent eget eros malesuada, condimentum lorem vitae, rhoncus urna. Donec suscipit quis erat consectetur molestie. Donec ornare eros velit, sagittis consequat orci consequat eget. Duis commodo accumsan congue. Nam gravida odio quis porta luctus. Vivamus commodo egestas tristique. Vivamus blandit velit vel mauris interdum tempus. Duis et diam lectus. Pellentesque placerat, sem et vehicula malesuada, arcu orci tempus nunc, non pharetra sem enim sed tortor. Ut ultricies diam vel sapien vehicula scelerisque. Cras et posuere libero. Vivamus nibh nibh, fermentum vel malesuada vel, congue at felis. Pellentesque eget lorem at dolor pharetra imperdiet.',
        maturityRating: '12+',
        episodes: ['11', '12', '13', '14', '15'],
      ),
    ];
  }

  Serie getSerieById(String id) {
    return getSeries().firstWhere((serie) => serie.id == id);
  }
}

final seriesRepositoryProvider = Provider<SeriesRepository>((ref) {
  return SeriesRepository();
});

class SeriesListNotifier extends Notifier<List<Serie>> {
  final SeriesRepository repository;

  SeriesListNotifier(this.repository);

  @override
  List<Serie> build() {
    return repository.getSeries();
  }

  Serie getSerieById(String id) {
    return repository.getSerieById(id);
  }
}
