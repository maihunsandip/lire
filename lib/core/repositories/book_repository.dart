import '../models/book.dart';

abstract interface class BookRepository {
  Future<List<Book>> getBooks();

  Future<Book?> getBook(String id);

  Future<void> addBook(Book book);

  Future<void> updateBook(Book book);

  Future<void> deleteBook(String id);

  Future<void> clearLibrary();
}