part of 'settings_navigation_bloc.dart';

@freezed
class SettingsNavigationState with _$SettingsNavigationState {
  const factory SettingsNavigationState({
    @Default(SettingsNavigationStartRoute.settings())
        SettingsNavigationStartRoute startRoute,
    @Default([]) List<SettingsNavigationRoute> routes,
  }) = _SettingsNavigationState;
}

@freezed
class SettingsNavigationStartRoute with _$SettingsNavigationStartRoute {
  const factory SettingsNavigationStartRoute.settings() = SettingsFirstRoute;
}

@freezed
class SettingsNavigationRoute with _$SettingsNavigationRoute {
  const factory SettingsNavigationRoute.userSettings() = UserSettingsRoute;
  const factory SettingsNavigationRoute.themeSettings() = ThemeSettingsRoute;
}
