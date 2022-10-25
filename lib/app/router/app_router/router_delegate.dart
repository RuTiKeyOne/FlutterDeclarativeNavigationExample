import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/BLoC/auth/auth_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/router/app_router_bloc/app_router_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/router/config/route_path.dart';
import 'package:flutter_declarative_navigation_example/app/screen/basket/basket_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/error/error_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/main/main_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/signin/signin_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/splash/splash_screen.dart';
import 'package:flutter_declarative_navigation_example/core/di/service_locator/locator.dart';
import 'package:flutter_declarative_navigation_example/core/utils/widget_key_constants.dart';

class AppRouterDelegate extends RouterDelegate<RoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<RoutePath> {
  late final GlobalKey<NavigatorState> _navigatorKey;
  late final AppRouterBloc _appRouterBloc;
  late RoutePath? _currentConfiguration;

  late final StreamSubscription<AppRouterState> _appRouterBlocSubscription;

  AppRouterDelegate() : _navigatorKey = GlobalKey<NavigatorState>() {
    final authBloc = locator.get<AuthBloc>();
    Future.delayed(const Duration(seconds: 1),
        () => authBloc..add(const AuthEvent.setNotAuthorized()));
    _appRouterBloc = AppRouterBloc(authBloc: authBloc);
    _appRouterBlocSubscription =
        _appRouterBloc.stream.listen(_listenAppRouterBloc);
    _currentConfiguration = getCurrentConfiguration(_appRouterBloc.state);
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  @override
  RoutePath? get currentConfiguration => _currentConfiguration;

  List<Page<dynamic>> pages(AppRouterState state) {
    final List<Page<dynamic>> pages = [];

    if (state.startRoute is AppRouterStartRouteError) {
      pages.add(
        const MaterialPage(
          key: ValueKey(WidgetKey.errorScreenKey),
          child: ErrorScreen(),
        ),
      );
      return pages;
    }

    if (state.startRoute is AppRouterStartRouteSplash) {
      pages.add(
        const MaterialPage(
          key: ValueKey(WidgetKey.splashScreenKey),
          child: SplashScreen(),
        ),
      );
      return pages;
    }

    if (state.startRoute is AppRouterStartRouteSignin) {
      pages.add(
        const MaterialPage(
          key: ValueKey(WidgetKey.signinScreenKey),
          child: SigninScreen(),
        ),
      );
      return pages;
    }

    if (state.startRoute is AppRouterStartRouteMain) {
      final mainStartRoute = state.startRoute as AppRouterStartRouteMain;
      final authState = mainStartRoute.authState;

      pages.add(
        MaterialPage(
          key: const ValueKey(WidgetKey.mainScreenKey),
          child: BlocProvider.value(
            value: _appRouterBloc,
            child: const MainScreen(),
          ),
        ),
      );

      authState.when(
        unknown: () {},
        notAuthorized: () {},
        auth: () {
          if (state.necessaryRoute != null) {
            state.necessaryRoute!.when(
              basket: () {
                _appRouterBloc.add(const AppRouterEvent.addBasket());
                _appRouterBloc.add(const AppRouterEvent.resetNecessaryRoute());
              },
            );
          }
        },
        authAnonymous: () {},
      );

      if (state.routes.any((element) => element is AppRouterRouteBasket)) {
        if (authState is Auth) {
          pages.add(
            MaterialPage(
              key: const ValueKey(WidgetKey.basketScreenKey),
              child: BlocProvider.value(
                value: _appRouterBloc,
                child: const BasketScreen(),
              ),
            ),
          );
        } else {
          _appRouterBloc.add(const AppRouterEvent.addNecessaryRoute(
              necessaryRoute: AppRouterNecessaryRoute.basket()));
          _appRouterBloc.add(const AppRouterSetSignin());
        }
      }
      return pages;
    }

    return pages;
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: pages(_appRouterBloc.state),
      onPopPage: (route, result) {
        final lastRoute = _appRouterBloc.state.routes.last;
        if (!route.didPop(result)) {
          return false;
        }

        lastRoute.when(
          basket: () {
            _appRouterBloc.add(const AppRouterEvent.popBasket());
          },
        );

        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(RoutePath configuration) async {
    configuration.when(
      error: () {
        _appRouterBloc.add(const AppRouterEvent.setError());
        return;
      },
      signin: () {
        _appRouterBloc.add(const AppRouterEvent.setSignin());
        return;
      },
      main: () {
        _appRouterBloc.add(const AppRouterEvent.setMain());
        return;
      },
      splash: () {
        _appRouterBloc.add(const AppRouterEvent.reset());
        return;
      },
      basket: () {
        _appRouterBloc.add(const AppRouterEvent.addBasket());
        return;
      },
    );
    return;
  }

  RoutePath? getCurrentConfiguration(AppRouterState state) {
    if (state.startRoute is AppRouterStartRouteSplash) {
      return const RoutePath.splash();
    } else if (state.startRoute is AppRouterStartRouteSignin) {
      return const RoutePath.signin();
    } else if (state.startRoute is AppRouterStartRouteMain) {
      if (state.routes.isEmpty) {
        return const RoutePath.main();
      } else {
        final lastRoute = state.routes.last;
        return lastRoute.when(
          basket: () {
            return const RoutePath.basket();
          },
        );
      }
    }

    return const RoutePath.error();
  }

  void _listenAppRouterBloc(AppRouterState state) {
    final configuration = getCurrentConfiguration(state);
    _currentConfiguration = configuration;
    notifyListeners();
  }

  @override
  void dispose() {
    _appRouterBlocSubscription.cancel();
    super.dispose();
  }
}
