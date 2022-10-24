import 'package:flutter/cupertino.dart';
import 'package:flutter_declarative_navigation_example/app/router/app_router.dart';
import 'package:flutter_declarative_navigation_example/app/router/config/route_path.dart';
import 'package:flutter_declarative_navigation_example/core/data/model/book.dart';

class AppRouterInformationParser extends RouteInformationParser<RoutePath> {
  @override
  Future<RoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isEmpty) {
      return const RoutePath.bookList();
    } else if (uri.pathSegments.length == 2) {
      if (uri.pathSegments[0] != AppRouter.bookDetailsRoute) {
        return const RoutePath.error();
      }
      final remaining = uri.pathSegments[1];
      final book = remaining is Book ? remaining as Book : null;
      if (book == null) return const RoutePath.error();
      return RoutePath.bookDetails(book: book);
    }
    return const RoutePath.error();
  }

  @override
  RouteInformation? restoreRouteInformation(RoutePath configuration) {
    return configuration.when(
      error: () {
        return const RouteInformation(location: AppRouter.errorRoute);
      },
      bookList: () {
        return const RouteInformation(location: AppRouter.initialRoute);
      },
      bookDetails: (book) {
        return RouteInformation(
            location: '${AppRouter.bookDetailsRoute}/$book');
      },
    );
  }
}
