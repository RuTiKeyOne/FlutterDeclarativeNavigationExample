import 'package:flutter/material.dart';
import 'package:flutter_declarative_navigation_example/app/router/config/route_path.dart';
import 'package:flutter_declarative_navigation_example/app/screen/book_details/book_details_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/book_list/book_list_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/error/error_screen.dart';
import 'package:flutter_declarative_navigation_example/core/data/model/book.dart';
import 'package:flutter_declarative_navigation_example/core/value/widget_key.dart';

class AppRouterDelegate extends RouterDelegate<RoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<RoutePath> {
  late final GlobalKey<NavigatorState> _navigatorKey;
  Book? selectedBook;
  bool showError = false;

  AppRouterDelegate() : _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  void _handleBookTapped(Book book) {
    selectedBook = book;
    notifyListeners();
  }

  @override
  RoutePath? get currentConfiguration {
    if (showError) {
      return const RoutePath.error();
    }

    return selectedBook == null
        ? const RoutePath.bookList()
        : RoutePath.bookDetails(book: selectedBook!);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
          key: const ValueKey(WidgetKey.bookListScreenKey),
          child: BookListScreen(
            onTapped: _handleBookTapped,
          ),
        ),
        if (showError)
          const MaterialPage(
            key: ValueKey(WidgetKey.errorScreenKey),
            child: ErrorScreen(),
          )
        else if (selectedBook != null)
          MaterialPage(
            key: const ValueKey(WidgetKey.bookDetailsScreenKey),
            child: BookDetailsScreen(book: selectedBook!),
          )
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        selectedBook = null;
        showError = false;

        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(RoutePath configuration) async {
    configuration.when(
      error: () {
        showError = true;
        selectedBook = null;
        return;
      },
      bookList: () {
        showError = false;
        selectedBook = null;
        return;
      },
      bookDetails: (book) {
        if (book.id < 0) {
          showError = true;
          selectedBook = null;
          return;
        }
        selectedBook = book;
        return;
      },
    );

    return;
  }
}
