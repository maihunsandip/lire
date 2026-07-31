import 'package:flutter/material.dart';

class LibraryAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const LibraryAppBar({
    super.key,
    required this.onImport,
  });

  final VoidCallback onImport;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
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
          tooltip: 'Grid/List View',
          onPressed: () {},
          icon: const Icon(Icons.grid_view_rounded),
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