import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lire/core/providers/layout_provider.dart';
import 'package:lire/core/providers/library_provider.dart';
import 'package:lire/core/widgets/app_error_view.dart';
import 'package:lire/core/widgets/app_loading_indicator.dart';
import 'package:lire/features/import/presentation/controllers/import_controller.dart';

import '../widgets/book_grid.dart';
import '../widgets/book_list.dart';
import '../widgets/empty_library.dart';
import '../widgets/library_app_bar.dart';
import '../widgets/library_header.dart';

class LibraryPage extends ConsumerWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksAsync = ref.watch(libraryProvider);
    final layout = ref.watch(layoutProvider);

    return Scaffold(
      appBar: LibraryAppBar(
        onImport: () async {
          await ref.read(importControllerProvider).importBooks();
        },
      ),
      body: booksAsync.when(
        data: (books) {
          return Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LibraryHeader(bookCount: books.length),
                const SizedBox(height: 48),
                Expanded(
                  child: books.isEmpty
                      ? const EmptyLibrary()
                      : layout == LibraryLayout.list
                          ? BookList(
                              books: books,
                            )
                          : BookGrid(
                              books: books,
                            ),
                ),
              ],
            ),
          );
        },
        loading: () => const AppLoadingIndicator(),
        error: (error, stack) => AppErrorView(error: error),
      ),
    );
  }
}