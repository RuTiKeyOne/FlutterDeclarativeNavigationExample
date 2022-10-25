import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/router/config/main_route_path.dart';
import 'package:flutter_declarative_navigation_example/app/router/main_router_bloc/main_router_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/screen/book_list/book_list_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/error/error_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/settings/settings_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/theme_settings/theme_settings_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/user_setting/user_settings_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/widget/fade_animation_page.dart';
import 'package:flutter_declarative_navigation_example/core/utils/widget_key_constants.dart';

class MainRouterDelegate extends RouterDelegate<MainRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MainRoutePath> {
  late final GlobalKey<NavigatorState> _navigatorKey;
  late final MainRouterBloc _mainRouterBloc;
  late MainRoutePath? _currentConfiguration;

  late final StreamSubscription<MainRouterState> _appRouterBlocSubscription;

  MainRouterDelegate({required MainRouterBloc mainRouterBloc})
      : _navigatorKey = GlobalKey<NavigatorState>() {
    _mainRouterBloc = mainRouterBloc;
    _appRouterBlocSubscription =
        _mainRouterBloc.stream.listen(_listenAppRouterBloc);
    _currentConfiguration = getCurrentConfiguration(_mainRouterBloc.state);
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  @override
  MainRoutePath? get currentConfiguration => _currentConfiguration;

  List<Page<dynamic>> pages(MainRouterState state) {
    final List<Page<dynamic>> pages = [];

    if (state.isError) {
      pages.add(
        const MaterialPage(
          key: ValueKey(WidgetKey.errorScreenKey),
          child: ErrorScreen(),
        ),
      );
      return pages;
    }

    if (state.selectedIndex == 0) {
      pages.add(
        const FadeAnimationPage(
          key: ValueKey(WidgetKey.bookListScreenKey),
          child: BookListScreen(),
        ),
      );
      return pages;
    } else if (state.selectedIndex == 1) {
      if (state.routes.isEmpty) {
        pages.add(
          FadeAnimationPage(
            key: const ValueKey(WidgetKey.settingScreenKey),
            child: BlocProvider.value(
              value: _mainRouterBloc,
              child: const SettingsScreen(),
            ),
          ),
        );
        return pages;
      } else {
        final lastRoute = state.routes.last;
        pages.add(
          FadeAnimationPage(
            key: const ValueKey(WidgetKey.settingScreenKey),
            child: BlocProvider.value(
              value: _mainRouterBloc,
              child: const SettingsScreen(),
            ),
          ),
        );
        lastRoute.when(
          userSettings: () {
            pages.add(
              const MaterialPage(
                key: ValueKey(WidgetKey.userSettingsScreenKey),
                child: UserSettingsScreen(),
              ),
            );
          },
          themeSettings: () {
            pages.add(
              const MaterialPage(
                key: ValueKey(WidgetKey.themeSettingsScreenKey),
                child: ThemeSettingsScreen(),
              ),
            );
          },
        );

        return pages;
      }
    }

    return pages;
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: pages(_mainRouterBloc.state),
      onPopPage: (route, result) {
        final lastRoute = _mainRouterBloc.state.routes.last;
        if (!route.didPop(result)) {
          return false;
        }

        lastRoute.when(
          userSettings: () {
            _mainRouterBloc.add(const MainRouterEvent.popUserSettingsRoute());
          },
          themeSettings: () {
            _mainRouterBloc.add(const MainRouterEvent.popThemeSettingsRoute());
          },
        );

        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(MainRoutePath configuration) async {
    configuration.when(
      bookList: () {
        _mainRouterBloc
            .add(const MainRouterEvent.resetWithSelectedIndex(index: 0));
        _mainRouterBloc.add(const MainRouterEvent.resetError());
      },
      settings: () {
        _mainRouterBloc
            .add(const MainRouterEvent.resetWithSelectedIndex(index: 1));
        _mainRouterBloc.add(const MainRouterEvent.resetError());
      },
      userSettings: () {
        _mainRouterBloc.add(const MainRouterEvent.addUserSettingsRoute());
        _mainRouterBloc.add(const MainRouterEvent.resetError());
      },
      themeSettings: () {
        _mainRouterBloc.add(const MainRouterEvent.addThemeSettingsRoute());
        _mainRouterBloc.add(const MainRouterEvent.resetError());
      },
      error: () {
        _mainRouterBloc.add(const MainRouterEvent.setError());
      },
    );
    return;
  }

  MainRoutePath? getCurrentConfiguration(MainRouterState state) {
    if (state.selectedIndex == 0) {
      return const MainRoutePath.bookList();
    } else if (state.selectedIndex == 1) {
      if (state.routes.isEmpty) {
        return const MainRoutePath.settings();
      } else {
        final lastRoute = state.routes.last;
        return lastRoute.when(
          userSettings: () {
            return const MainRoutePath.userSettings();
          },
          themeSettings: () {
            return const MainRoutePath.themeSettings();
          },
        );
      }
    }
    return const MainRoutePath.error();
  }

  void _listenAppRouterBloc(MainRouterState state) {
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
