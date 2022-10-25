import 'package:flutter/material.dart';
import 'package:flutter_declarative_navigation_example/app/router/config/main_route_path.dart';
import 'package:flutter_declarative_navigation_example/app/router/main_router/main_router.dart';

class MainRouterInformationParser
    extends RouteInformationParser<MainRoutePath> {
  @override
  Future<MainRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isNotEmpty) {
      final path = uri.pathSegments[0];
      if (path == MainRouter.initialRoute ||
          path == MainRouter.bookListScreenRoute) {
        return const MainRoutePath.bookList();
      } else if (path == MainRouter.settingsScreenRoute) {
        return const MainRoutePath.settings();
      } else if (path == MainRouter.userSettingsScreenRoute) {
        return const MainRoutePath.userSettings();
      } else if (path == MainRouter.themeSettingsScreenRoute) {
        return const MainRoutePath.themeSettings();
      } else if (path == MainRouter.errorRoute) {
        return const MainRoutePath.error();
      }
    }
    return const MainRoutePath.error();
  }

  @override
  RouteInformation? restoreRouteInformation(MainRoutePath configuration) {
    return configuration.when(
      bookList: () {
        return const RouteInformation(
            location: '/${MainRouter.bookListScreenRoute}');
      },
      settings: () {
        return const RouteInformation(
            location: '/${MainRouter.settingsScreenRoute}');
      },
      userSettings: () {
        return const RouteInformation(
            location: '/${MainRouter.userSettingsScreenRoute}');
      },
      themeSettings: () {
        return const RouteInformation(
            location: '/${MainRouter.themeSettingsScreenRoute}');
      },
      error: () {
        return const RouteInformation(location: '/${MainRouter.errorRoute}');
      },
    );
  }
}
