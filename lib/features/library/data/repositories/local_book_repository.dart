import 'package:lire/core/models/book.dart';
import 'package:lire/core/repositories/book_repository.dart';

class LocalBookRepository implements BookRepository {
  @override
  Future<void> addBook(Book book) async {
    throw UnimplementedError();
  }

  @override
  Future<void> clearLibrary() async {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteBook(String id) async {
    throw UnimplementedError();
  }

  @override
  Future<Book?> getBook(String id) async {
    throw UnimplementedError();
  }

  @override
  Future<List<Book>> getBooks() async {
    return [];
  }

  @override
  Future<void> updateBook(Book book) async {
    throw UnimplementedError();
  }
}