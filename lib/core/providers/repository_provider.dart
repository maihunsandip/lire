import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lire/core/database/daos/books_dao.dart';
import 'package:lire/core/repositories/book_repository.dart';
import 'package:lire/features/library/data/repositories/local_book_repository.dart';

import 'database_provider.dart';

final booksDaoProvider = Provider<BooksDao>((ref) {
  final database = ref.watch(databaseProvider);
  return BooksDao(database);
});

final bookRepositoryProvider = Provider<BookRepository>((ref) {
  final dao = ref.watch(booksDaoProvider);

  return LocalBookRepository(dao);
});