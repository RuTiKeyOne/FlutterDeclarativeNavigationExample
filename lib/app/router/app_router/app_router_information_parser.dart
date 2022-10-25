import 'package:flutter/material.dart';
import 'package:flutter_declarative_navigation_example/app/router/app_router/app_router.dart';

import '../config/route_path.dart';

class AppRouterInformationParser extends RouteInformationParser<RoutePath> {
  @override
  Future<RoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isNotEmpty) {
      final path = uri.pathSegments[0];
      if (path == AppRouter.initialRoute || path == AppRouter.splashRoute) {
        return const RoutePath.splash();
      } else if (path == AppRouter.signinRoute) {
        return const RoutePath.signin();
      } else if (path == AppRouter.mainRoute) {
        return const RoutePath.main();
      } else if (path == AppRouter.basketRoute) {
        return const RoutePath.basket();
      }
    }
    return const RoutePath.splash();
  }

  @override
  RouteInformation? restoreRouteInformation(RoutePath configuration) {
    return configuration.when(
      error: () {
        return const RouteInformation(location: '/${AppRouter.errorRoute}');
      },
      splash: () {
        return const RouteInformation(location: '/${AppRouter.splashRoute}');
      },
      signin: () {
        return const RouteInformation(location: '/${AppRouter.signinRoute}');
      },
      main: () {
        return const RouteInformation(location: '/${AppRouter.mainRoute}');
      },
      basket: () {
        return const RouteInformation(location: '/${AppRouter.basketRoute}');
      },
    );
  }
}
