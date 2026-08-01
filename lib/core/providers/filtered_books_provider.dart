import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lire/core/models/book.dart';

import 'library_provider.dart';
import 'search_provider.dart';

final filteredBooksProvider =
    Provider<AsyncValue<List<Book>>>((ref) {
  final booksAsync = ref.watch(libraryProvider);
  final query = ref.watch(searchQueryProvider);

  return booksAsync.whenData((books) {
    if (query.trim().isEmpty) {
      return books;
    }

    final search = query.toLowerCase();

    return books.where((book) {
      return book.title.toLowerCase().contains(search) ||
          book.author.toLowerCase().contains(search);
    }).toList();
  });
});