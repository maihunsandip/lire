import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/book.dart';
import 'repository_provider.dart';

final libraryProvider = StreamProvider<List<Book>>((ref) {
  final repository = ref.watch(bookRepositoryProvider);

  return repository.watchBooks();
});