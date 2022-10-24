import 'package:flutter_declarative_navigation_example/app/router/app_router_information_parser.dart';
import 'package:flutter_declarative_navigation_example/app/router/router_delegate.dart';

class AppRouter {
  static const initialRoute = '/';
  static const errorRoute = '404';
  static const bookDetailsRoute = 'bookDetails';

  static final routerDelegate = AppRouterDelegate();
  static final routerInformationParser = AppRouterInformationParser();
}
