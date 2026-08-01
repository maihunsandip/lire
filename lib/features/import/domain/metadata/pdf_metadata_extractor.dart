import 'book_metadata.dart';
import 'metadata_extractor.dart';

class PdfMetadataExtractor implements MetadataExtractor {
  @override
  Future<BookMetadata> extract(String filePath) async {
    throw UnimplementedError(
      'PDF metadata extraction will be implemented in Milestone 5.',
    );
  }
}