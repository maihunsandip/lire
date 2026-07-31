import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/library/data/repositories/local_book_repository.dart';
import '../repositories/book_repository.dart';

final bookRepositoryProvider = Provider<BookRepository>((ref) {
  return LocalBookRepository();
});