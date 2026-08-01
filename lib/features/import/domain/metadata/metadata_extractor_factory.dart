import 'package:path/path.dart' as p;

import 'epub_metadata_extractor.dart';
import 'metadata_extractor.dart';
import 'pdf_metadata_extractor.dart';
import 'txt_metadata_extractor.dart';

class MetadataExtractorFactory {
  const MetadataExtractorFactory._();

  static MetadataExtractor forFile(String path) {
    switch (p.extension(path).toLowerCase()) {
      case '.epub':
        return EpubMetadataExtractor();

      case '.txt':
        return TxtMetadataExtractor();

      case '.pdf':
        return PdfMetadataExtractor();

      default:
        throw UnsupportedError(
          'Unsupported file format: ${p.extension(path)}',
        );
    }
  }
}