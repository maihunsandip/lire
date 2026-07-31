import 'package:drift/drift.dart' as drift;

import 'package:lire/core/database/app_database.dart' as db;
import 'package:lire/core/enums/book_format.dart';
import 'package:lire/core/models/book.dart';

class BookMapper {
  const BookMapper._();

  /// Database -> Domain
  static Book fromDatabase(db.Book row) {
    return Book(
      id: row.id,
      title: row.title,
      author: row.author,
      path: row.path,
      format: BookFormat.values.firstWhere(
        (e) => e.name == row.format,
      ),
      coverPath: row.coverPath,
      dateAdded: row.dateAdded,
      lastOpened: row.lastOpened,
      readingProgress: row.readingProgress,
    );
  }

  /// Domain -> Database Companion
  static db.BooksCompanion toCompanion(Book book) {
    return db.BooksCompanion.insert(
      id: book.id,
      title: book.title,
      author: drift.Value(book.author),
      path: book.path,
      format: book.format.name,
      coverPath: drift.Value(book.coverPath),
      dateAdded: book.dateAdded,
      lastOpened: drift.Value(book.lastOpened),
      readingProgress: drift.Value(book.readingProgress),
    );
  }
}