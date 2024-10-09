class BookModel {
  final String title, author, image, description;
  final int time, chapters, insights;
  final List<String> objectives;

  const BookModel({
    required this.title,
    required this.author,
    required this.image,
    required this.time,
    required this.chapters,
    required this.insights,
    required this.objectives,
    required this.description,
  });
}
