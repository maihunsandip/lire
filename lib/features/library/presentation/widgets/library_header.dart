import 'package:flutter/material.dart';

class LibraryHeader extends StatelessWidget {
  final int bookCount;

  const LibraryHeader({
    super.key,
    required this.bookCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Library',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const Spacer(),
        Text(
          '$bookCount books',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}