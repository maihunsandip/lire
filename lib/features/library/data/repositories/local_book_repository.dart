import 'package:lire/core/database/daos/books_dao.dart';
import 'package:lire/core/models/book.dart';
import 'package:lire/core/repositories/book_repository.dart';

import '../mappers/book_mapper.dart';

class LocalBookRepository implements BookRepository {
  final BooksDao dao;

  LocalBookRepository(this.dao);

  @override
  Stream<List<Book>> watchBooks() {
    return dao.watchBooks().map(
      (rows) => rows.map(BookMapper.fromDatabase).toList(),
    );
  }

  @override
  Future<Book?> getBook(String id) async {
    final row = await dao.getBook(id);

    if (row == null) {
      return null;
    }

    return BookMapper.fromDatabase(row);
  }

  @override
  Future<void> addBook(Book book) async {
    await dao.insertBook(
      BookMapper.toCompanion(book),
    );
  }

  @override
  Future<void> updateBook(Book book) async {
    throw UnimplementedError(
      'updateBook() will be implemented after import is working.',
    );
  }

  @override
  Future<void> deleteBook(String id) async {
    await dao.deleteBook(id);
  }

  @override
  Future<void> clearLibrary() async {
    await dao.clearLibrary();
  }
}