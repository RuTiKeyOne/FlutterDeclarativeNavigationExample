import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/BLoC/auth/auth_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/routes/bloc/app_navigation/app_navigation_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/screen/basket/basket_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/main/main_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/signin/signin_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/splash/splash_screen.dart';
import 'package:flutter_declarative_navigation_example/core/di/service_locator/locator.dart';
import 'package:flutter_declarative_navigation_example/core/utils/widget_key_constants.dart';

class AppNavigation extends StatefulWidget {
  const AppNavigation({Key? key}) : super(key: key);

  @override
  State<AppNavigation> createState() => _AppNavigationState();
}

class _AppNavigationState extends State<AppNavigation> {
  late final AppNavigationBloc appNavigationBloc;

  @override
  void initState() {
    final authBloc = locator.get<AuthBloc>();
    Future.delayed(const Duration(seconds: 1),
        () => authBloc.add(const AuthEvent.setNotAuthorized()));
    appNavigationBloc = AppNavigationBloc(authBloc: authBloc);
    super.initState();
  }

  @override
  void dispose() {
    appNavigationBloc.close();
    super.dispose();
  }

  List<Page<dynamic>> pages(AppNavigationState state) {
    List<Page<dynamic>> pages = [];

    if (state.startRoute is AppNavigationStartRouteSplash) {
      pages.add(
        CupertinoPage(
          key: const ValueKey(WidgetKey.splashScreenKey),
          child: BlocProvider.value(
            value: appNavigationBloc,
            child: const SplashScreen(),
          ),
        ),
      );
    } else if (state.startRoute is AppNavigationStartRouteSignin) {
      pages.add(
        CupertinoPage(
          key: const ValueKey(WidgetKey.signinScreenKey),
          child: BlocProvider.value(
            value: appNavigationBloc,
            child: const SigninScreen(),
          ),
        ),
      );
    } else if (state.startRoute is AppNavigationStartRouteMain) {
      final mainRoute = state.startRoute as AppNavigationStartRouteMain;
      pages.add(
        CupertinoPage(
          key: const ValueKey(WidgetKey.mainScreenKey),
          child: BlocProvider.value(
            value: appNavigationBloc,
            child: const MainScreen(),
          ),
        ),
      );
      mainRoute.authState.when(
        unknown: () {},
        notAuthorized: () {},
        auth: () {
          if (state.necessaryRoute != null) {
            state.necessaryRoute!.when(
              basket: () {
                appNavigationBloc.add(const AppNavigationEvent.addBasket());
              },
            );
          }
        },
        authAnonymous: () {},
      );
      appNavigationBloc.add(const AppNavigationEvent.resetNecessaryRoute());
      if (state.routes.contains(const AppNavigationRoute.basket())) {
        mainRoute.authState.when(
          unknown: () {},
          notAuthorized: () {},
          auth: () {
            pages.add(
              CupertinoPage(
                key: const ValueKey(WidgetKey.basketScreenKey),
                child: BlocProvider.value(
                  value: appNavigationBloc,
                  child: const BasketScreen(),
                ),
              ),
            );
          },
          authAnonymous: () {
            appNavigationBloc.add(const AppNavigationEvent.addNecessaryRoute(
                necessaryRoute: AppNavigationNecessaryRoute.basket()));
            appNavigationBloc.add(const AppNavigationEvent.setSignin());
          },
        );
      }
    }

    return pages;
  }

  bool onPopPage(
      Route<dynamic> route, dynamic result, AppNavigationState state) {
    if (!route.didPop(result)) {
      return false;
    }

    if (state.routes.contains(const AppNavigationRoute.basket())) {
      appNavigationBloc.add(const AppNavigationEvent.popBasket());
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      bloc: appNavigationBloc,
      builder: (context, state) {
        return Navigator(
          pages: pages(state),
          onPopPage: (route, result) => onPopPage(route, result, state),
        );
      },
    );
  }
}
