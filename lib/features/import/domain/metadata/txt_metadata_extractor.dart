import 'package:path/path.dart' as p;

import 'book_metadata.dart';
import 'metadata_extractor.dart';

import 'package:lire/core/enums/book_format.dart';

class TxtMetadataExtractor implements MetadataExtractor {
  @override
  Future<BookMetadata> extract(String filePath) async {
    return BookMetadata(
      title: p.basenameWithoutExtension(filePath),
      author: 'Unknown',
      format: BookFormat.txt,
    );
  }
}