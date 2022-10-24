import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/router/app_router_bloc/app_router_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/router/config/route_path.dart';
import 'package:flutter_declarative_navigation_example/app/screen/book_details/book_details_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/book_list/book_list_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/error/error_screen.dart';
import 'package:flutter_declarative_navigation_example/core/value/widget_key.dart';

class AppRouterDelegate extends RouterDelegate<RoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<RoutePath> {
  late final GlobalKey<NavigatorState> _navigatorKey;
  final AppRouterBloc appRouterBloc;

  AppRouterDelegate()
      : appRouterBloc = AppRouterBloc(),
        _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  @override
  RoutePath? get currentConfiguration {
    if (appRouterBloc.state.startRoute is AppRouterStartError) {
      return const RoutePath.error();
    } else if (appRouterBloc.state.startRoute is AppRouterStartBookList) {
      if (appRouterBloc.state.routes.isEmpty) {
        return const RoutePath.bookList();
      } else {
        final lastRoute = appRouterBloc.state.routes.last;
        return lastRoute.when(
          bookDetails: (book) {
            return RoutePath.bookDetails(book: book);
          },
        );
      }
    }

    return const RoutePath.error();
  }

  List<Page<dynamic>> pages(AppRouterState state) {
    final List<Page<dynamic>> pages = [];

    if (state.startRoute is AppRouterStartError) {
      pages.add(
        const MaterialPage(
          key: ValueKey(WidgetKey.errorScreenKey),
          child: ErrorScreen(),
        ),
      );
      return pages;
    }

    if (state.startRoute is AppRouterStartBookList) {
      pages.add(
        MaterialPage(
          key: const ValueKey(WidgetKey.bookListScreenKey),
          child: BlocProvider.value(
            value: appRouterBloc,
            child: const BookListScreen(),
          ),
        ),
      );

      if (state.routes.any((element) => element is AppRouterBookDetails)) {
        final route = state.routes
            .firstWhere((element) => element is AppRouterBookDetails);

        pages.add(
          MaterialPage(
            key: const ValueKey(WidgetKey.bookDetailsScreenKey),
            child: BlocProvider.value(
              value: appRouterBloc,
              child: BookDetailsScreen(book: route.book),
            ),
          ),
        );
      }
    }
    return pages;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppRouterBloc, AppRouterState>(
      bloc: appRouterBloc,
      builder: (context, state) {
        return Navigator(
          key: navigatorKey,
          pages: pages(state),
          onPopPage: (route, result) {
            final routes = appRouterBloc.state.routes.last;
            if (!route.didPop(result)) {
              return false;
            }

            routes.when(
              bookDetails: (book) {
                appRouterBloc.add(const AppRouterEvent.popBookDetails());
              },
            );

            return true;
          },
        );
      },
    );
  }

  @override
  Future<void> setNewRoutePath(RoutePath configuration) async {
    configuration.when(
      error: () {
        appRouterBloc.add(const AppRouterEvent.setErrorFirstRoute());
        return;
      },
      bookList: () {
        appRouterBloc.add(const AppRouterEvent.setBookListFirstRoute());
        return;
      },
      bookDetails: (book) {
        if (book.id < 0) {
          appRouterBloc.add(const AppRouterEvent.setErrorFirstRoute());
          return;
        }
        appRouterBloc.add(AppRouterEvent.addBookDetails(book: book));
        return;
      },
    );

    return;
  }
}
