import 'package:flutter/material.dart';

import '../widgets/empty_library.dart';
import '../widgets/library_app_bar.dart';
import '../widgets/library_header.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LibraryAppBar(),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LibraryHeader(bookCount: 0),
            SizedBox(height: 48),
            Expanded(
              child: EmptyLibrary(),
            ),
          ],
        ),
      ),
    );
  }
}