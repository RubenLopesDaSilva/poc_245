class Serie {
  Serie({
    required this.id,
    required this.title,
    required this.summary,
    required this.maturityRating,
    required this.episodes,
  });

  final String id;
  final String title;
  final String summary;
  final String maturityRating;
  final List<String> episodes;
}
