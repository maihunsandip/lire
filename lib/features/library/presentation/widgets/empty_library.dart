import 'package:flutter/material.dart';
import 'package:lire/core/widgets/app_empty_state.dart';

class EmptyLibrary extends StatelessWidget {
  const EmptyLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return AppEmptyState(
      icon: Icons.menu_book_rounded,
      title: 'No books yet',
      message: 'Import your first EPUB, PDF or TXT book.',
      action: FilledButton.icon(
        onPressed: () {
          // Import action will be connected later.
        },
        icon: const Icon(Icons.file_upload_outlined),
        label: const Text('Import Books'),
      ),
    );
  }
}