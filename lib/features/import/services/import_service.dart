import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as p;

class ImportService {
  const ImportService();

  Future<List<File>> pickBooks() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: const [
        'epub',
        'pdf',
        'txt',
      ],
    );

    if (result == null) {
      return [];
    }

    return result.paths
        .whereType<String>()
        .map(File.new)
        .toList();
  }

  String filename(File file) {
    return p.basename(file.path);
  }

  String extension(File file) {
    return p.extension(file.path).replaceFirst('.', '').toLowerCase();
  }
}