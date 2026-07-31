import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';

import 'package:lire/core/enums/book_format.dart';
import 'package:lire/core/models/book.dart';
import 'package:lire/core/providers/repository_provider.dart';
import 'package:lire/core/repositories/book_repository.dart';
import 'package:lire/features/import/services/import_service.dart';

final importServiceProvider = Provider<ImportService>(
  (ref) => const ImportService(),
);

final importControllerProvider = Provider<ImportController>(
  (ref) => ImportController(
    repository: ref.watch(bookRepositoryProvider),
    importService: ref.watch(importServiceProvider),
  ),
);

class ImportController {
  ImportController({
    required this.repository,
    required this.importService,
  });

  final BookRepository repository;
  final ImportService importService;

  final Uuid _uuid = const Uuid();

  Future<void> importBooks() async {
    final files = await importService.pickBooks();

    for (final file in files) {
      await repository.addBook(
        _createBook(file),
      );
    }
  }

  Book _createBook(File file) {
    final extension = p.extension(file.path).toLowerCase();

    final format = BookFormat.values.firstWhere(
      (e) => e.name == extension.replaceFirst('.', ''),
      orElse: () => BookFormat.txt,
    );

    return Book(
      id: _uuid.v4(),
      title: p.basenameWithoutExtension(file.path),
      author: 'Unknown',
      path: file.path,
      format: format,
      coverPath: null,
      dateAdded: DateTime.now(),
      lastOpened: null,
      readingProgress: 0,
    );
  }
}