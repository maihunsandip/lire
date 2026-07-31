import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/book.dart';
import 'repository_provider.dart';

final libraryProvider = FutureProvider<List<Book>>((ref) async {
  final repository = ref.watch(bookRepositoryProvider);

  return repository.getBooks();
});