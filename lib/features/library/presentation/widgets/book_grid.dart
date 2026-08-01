import 'package:flutter/material.dart';

import 'package:lire/core/models/book.dart';

import 'book_card.dart';

class BookGrid extends StatelessWidget {
  const BookGrid({
    super.key,
    required this.books,
  });

  final List<Book> books;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: books.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 220,
        childAspectRatio: 0.68,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return BookCard(
          book: books[index],
        );
      },
    );
  }
}