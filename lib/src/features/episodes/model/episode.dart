class Episode {
  Episode({
    required this.id,
    required this.title,
    required this.description,
    required this.sortie,
    required this.actors,
    required this.genre,
    required this.rating,
  });

  final String id;
  final String title;
  final String description;
  final String sortie;
  final List<String> actors;
  final String genre;
  final int rating;
}
