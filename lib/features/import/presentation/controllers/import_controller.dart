import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import 'package:lire/core/models/book.dart';
import 'package:lire/core/providers/repository_provider.dart';
import 'package:lire/core/repositories/book_repository.dart';
import 'package:lire/features/import/services/import_service.dart';
import 'package:lire/features/import/domain/metadata/book_metadata.dart';
import 'package:lire/features/import/domain/metadata/metadata_extractor_factory.dart';

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
  ImportController({required this.repository, required this.importService});

  final BookRepository repository;
  final ImportService importService;

  final Uuid _uuid = const Uuid();

  Future<void> importBooks() async {
    final files = await importService.pickBooks();

    for (final file in files) {
      final book = await _createBook(file);
      await repository.addBook(book);
    }
  }

  Future<Book> _createBook(File file) async {
    final extractor = MetadataExtractorFactory.forFile(file.path);

    final BookMetadata metadata = await extractor.extract(file.path);

    return Book(
      id: _uuid.v4(),
      title: metadata.title,
      author: metadata.author,
      path: file.path,
      format: metadata.format,
      coverPath: metadata.coverPath,
      dateAdded: DateTime.now(),
      lastOpened: null,
      readingProgress: 0,
    );
  }
}
