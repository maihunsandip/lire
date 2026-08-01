import 'package:lire/core/enums/book_format.dart';

class BookMetadata {
  const BookMetadata({
    required this.title,
    required this.author,
    required this.format,
    this.coverPath,
  });

  final String title;
  final String author;
  final BookFormat format;
  final String? coverPath;
}