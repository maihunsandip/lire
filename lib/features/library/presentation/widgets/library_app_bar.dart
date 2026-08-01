import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:lire/core/providers/layout_provider.dart';
import 'package:lire/core/providers/search_provider.dart';

class LibraryAppBar extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  const LibraryAppBar({
    super.key,
    required this.onImport,
  });

  final VoidCallback onImport;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  ConsumerState<LibraryAppBar> createState() => _LibraryAppBarState();
}

class _LibraryAppBarState extends ConsumerState<LibraryAppBar> {
  bool _searching = false;

  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final layout = ref.watch(layoutProvider);

    return AppBar(
      title: _searching
          ? TextField(
              controller: _controller,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Search books...',
                border: InputBorder.none,
              ),
              onChanged: (value) {
                ref.read(searchQueryProvider.notifier).state = value;
              },
            )
          : const Text('Lire'),
      actions: [
        IconButton(
          tooltip: _searching ? 'Close Search' : 'Search',
          icon: Icon(
            _searching ? Icons.close : Icons.search,
          ),
          onPressed: () {
            if (_searching) {
              _controller.clear();
              ref.read(searchQueryProvider.notifier).state = '';
            }

            setState(() {
              _searching = !_searching;
            });
          },
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
          onPressed: widget.onImport,
          icon: const Icon(Icons.file_upload_outlined),
        ),
      ],
    );
  }
}