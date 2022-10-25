import 'package:flutter_declarative_navigation_example/app/router/app_router/app_router_information_parser.dart';

import 'router_delegate.dart';

class AppRouter {
  static const initialRoute = '/';
  static const signinRoute = 'signin';
  static const mainRoute = 'main';
  static const errorRoute = 'error';
  static const splashRoute = 'splash';
  static const basketRoute = 'basket';

  static final routerDelegate = AppRouterDelegate();
  static final routerInformationParser = AppRouterInformationParser();
}
