import 'package:flutter/material.dart';

import 'package:lire/core/models/book.dart';

class BookTile extends StatelessWidget {
  const BookTile({
    super.key,
    required this.book,
  });

  final Book book;

  IconData _icon() {
    switch (book.format.name) {
      case 'epub':
        return Icons.menu_book;
      case 'pdf':
        return Icons.picture_as_pdf;
      case 'txt':
        return Icons.description;
      default:
        return Icons.book;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          _icon(),
          size: 36,
        ),
        title: Text(
          book.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          book.author,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(
          book.format.name.toUpperCase(),
        ),
      ),
    );
  }
}