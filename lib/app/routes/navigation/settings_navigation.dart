import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/routes/bloc/settings_navigation/settings_navigation_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/screen/settings/settings_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/theme_settings/theme_settings_screen.dart';
import 'package:flutter_declarative_navigation_example/app/screen/user_setting/user_settings_screen.dart';
import 'package:flutter_declarative_navigation_example/core/utils/widget_key_constants.dart';

class SettingsNavigation extends StatefulWidget {
  const SettingsNavigation({Key? key}) : super(key: key);

  @override
  State<SettingsNavigation> createState() => _SettingsNavigationState();
}

class _SettingsNavigationState extends State<SettingsNavigation> {
  late final SettingsNavigationBloc settingsNavigationBloc;

  @override
  void initState() {
    settingsNavigationBloc = SettingsNavigationBloc();
    super.initState();
  }

  @override
  void dispose() {
    settingsNavigationBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsNavigationBloc, SettingsNavigationState>(
      bloc: settingsNavigationBloc,
      builder: (context, state) {
        return Navigator(
          pages: [
            if (state.startRoute is SettingsFirstRoute)
              CupertinoPage(
                key: const ValueKey(WidgetKey.settingScreenKey),
                child: BlocProvider.value(
                  value: settingsNavigationBloc,
                  child: const SettingsScreen(),
                ),
              ),
            if (state.routes.contains(const UserSettingsRoute()))
              CupertinoPage(
                key: const ValueKey(WidgetKey.userSettingsScreen),
                child: BlocProvider.value(
                  value: settingsNavigationBloc,
                  child: const UserSettingsScreen(),
                ),
              )
            else if (state.routes.contains(const ThemeSettingsRoute()))
              CupertinoPage(
                key: const ValueKey(WidgetKey.themeSettingsScreen),
                child: BlocProvider.value(
                  value: settingsNavigationBloc,
                  child: const ThemeSettingsScreen(),
                ),
              ),
          ],
          onPopPage: (route, result) {
            if (!route.didPop(result)) {
              return false;
            }

            if (state.routes.contains(const ThemeSettingsRoute())) {
              settingsNavigationBloc
                  .add(const SettingsNavigationEvent.popThemeSettings());
            }

            if (state.routes.contains(const UserSettingsRoute())) {
              settingsNavigationBloc
                  .add(const SettingsNavigationEvent.popUserSettings());
            }

            return true;
          },
        );
      },
    );
  }
}
