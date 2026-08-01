import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lire/core/providers/layout_provider.dart';

class LibraryAppBar extends ConsumerWidget
    implements PreferredSizeWidget {
  const LibraryAppBar({
    super.key,
    required this.onImport,
  });

  final VoidCallback onImport;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layout = ref.watch(layoutProvider);

    return AppBar(
      title: const Text('Lire'),
      actions: [
        IconButton(
          tooltip: 'Search',
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          tooltip: 'Sort',
          onPressed: () {},
          icon: const Icon(Icons.sort),
        ),
        IconButton(
          tooltip: layout == LibraryLayout.grid
              ? 'List View'
              : 'Grid View',
          onPressed: () {
            ref.read(layoutProvider.notifier).toggle();
          },
          icon: Icon(
            layout == LibraryLayout.grid
                ? Icons.view_list_rounded
                : Icons.grid_view_rounded,
          ),
        ),
        IconButton(
          tooltip: 'Import Books',
          onPressed: onImport,
          icon: const Icon(Icons.file_upload_outlined),
        ),
      ],
    );
  }
}