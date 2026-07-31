import '../enums/book_format.dart';

class Book {
  final String id;

  final String title;

  final String author;

  final String path;

  final BookFormat format;

  final String? coverPath;

  final DateTime dateAdded;

  final DateTime? lastOpened;

  final double readingProgress;

  const Book({
    required this.id,
    required this.title,
    required this.author,
    required this.path,
    required this.format,
    this.coverPath,
    required this.dateAdded,
    this.lastOpened,
    this.readingProgress = 0.0,
  });

  Book copyWith({
    String? id,
    String? title,
    String? author,
    String? path,
    BookFormat? format,
    String? coverPath,
    DateTime? dateAdded,
    DateTime? lastOpened,
    double? readingProgress,
  }) {
    return Book(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      path: path ?? this.path,
      format: format ?? this.format,
      coverPath: coverPath ?? this.coverPath,
      dateAdded: dateAdded ?? this.dateAdded,
      lastOpened: lastOpened ?? this.lastOpened,
      readingProgress: readingProgress ?? this.readingProgress,
    );
  }
}