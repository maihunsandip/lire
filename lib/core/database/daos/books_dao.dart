import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/books.dart';

part 'books_dao.g.dart';

@DriftAccessor(tables: [Books])
class BooksDao extends DatabaseAccessor<AppDatabase>
    with _$BooksDaoMixin {
  BooksDao(super.db);

  Stream<List<Book>> watchBooks() {
    return select(books).watch();
  }

  Future<List<Book>> getBooks() {
    return select(books).get();
  }

  Future<Book?> getBook(String id) {
    return (select(books)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<void> insertBook(BooksCompanion book) {
    return into(books).insert(book);
  }

  Future<void> updateBook(Book book) {
    return update(books).replace(book);
  }

  Future<void> deleteBook(String id) {
    return (delete(books)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> clearLibrary() {
    return delete(books).go();
  }
}