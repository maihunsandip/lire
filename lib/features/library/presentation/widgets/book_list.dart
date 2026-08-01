import 'package:flutter/material.dart';

import 'package:lire/core/models/book.dart';

import 'book_tile.dart';

class BookList extends StatelessWidget {
  const BookList({
    super.key,
    required this.books,
  });

  final List<Book> books;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: books.length,
      separatorBuilder: (context, index) =>
          const SizedBox(height: 12),
      itemBuilder: (context, index) {
        return BookTile(
          book: books[index],
        );
      },
    );
  }
}