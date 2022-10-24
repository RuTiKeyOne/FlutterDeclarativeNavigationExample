import 'package:flutter/material.dart';
import 'package:flutter_declarative_navigation_example/core/data/model/book.dart';

class BookTile extends StatelessWidget {
  final Book book;
  final VoidCallback onTap;

  const BookTile({
    Key? key,
    required this.book,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(book.title),
            Text(book.countPages.toString()),
          ],
        ),
      ),
    );
  }
}
