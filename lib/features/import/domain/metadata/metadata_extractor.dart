import 'book_metadata.dart';

abstract class MetadataExtractor {
  Future<BookMetadata> extract(String filePath);
}