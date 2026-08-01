import 'dart:io';

import 'package:epubx/epubx.dart';

import 'package:lire/core/enums/book_format.dart';

import 'book_metadata.dart';
import 'metadata_extractor.dart';

class EpubMetadataExtractor implements MetadataExtractor {
  @override
  Future<BookMetadata> extract(String filePath) async {
    final bytes = await File(filePath).readAsBytes();

    final book = await EpubReader.readBook(bytes);

    final title = (book.Title?.trim().isNotEmpty ?? false)
        ? book.Title!.trim()
        : _fileName(filePath);

    final author = book.Author?.trim().isNotEmpty == true
        ? book.Author!.trim()
        : 'Unknown';

    return BookMetadata(
      title: title,
      author: author,
      format: BookFormat.epub,
    );
  }

  String _fileName(String path) {
    return path
        .split(Platform.pathSeparator)
        .last
        .replaceAll('.epub', '');
  }
}