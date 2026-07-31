import 'package:flutter/material.dart';

class EmptyLibrary extends StatelessWidget {
  const EmptyLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.menu_book_rounded,
            size: 96,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 24),
          Text(
            'No books yet',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Import your first EPUB, PDF or TXT book.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 32),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.file_upload_outlined),
            label: const Text('Import Books'),
          ),
        ],
      ),
    );
  }
}