import 'package:flutter/material.dart';
import 'package:flutter_declarative_navigation_example/app/screen/book_list/widget/book_tile.dart';
import 'package:flutter_declarative_navigation_example/core/data/model/book.dart';

class BookListScreen extends StatefulWidget {
  final Function(Book book) onTapped;

  const BookListScreen({Key? key, required this.onTapped}) : super(key: key);

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  final books = <Book>[
    const Book(id: 1, title: 'Book 1', countPages: 251),
    const Book(id: 2, title: 'Book 2', countPages: 431),
    const Book(id: 3, title: 'Book 3', countPages: 141),
    const Book(id: 4, title: 'Book 4', countPages: 2561),
    const Book(id: 5, title: 'Book 5', countPages: 151),
    const Book(id: 6, title: 'Book 6', countPages: 241),
    const Book(id: 7, title: 'Book 7', countPages: 2421),
    const Book(id: 8, title: 'Book 8', countPages: 1241),
    const Book(id: 9, title: 'Book 9', countPages: 751),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Book List Screen')),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return BookTile(
              book: books[index],
              onTap: () => widget.onTapped(books[index]),
            );
          },
          itemCount: books.length,
        ),
      ),
    );
  }
}
