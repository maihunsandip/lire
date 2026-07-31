import '../models/book.dart';

abstract interface class BookRepository {
  Stream<List<Book>> watchBooks();

  Future<Book?> getBook(String id);

  Future<void> addBook(Book book);

  Future<void> updateBook(Book book);

  Future<void> deleteBook(String id);

  Future<void> clearLibrary();
}