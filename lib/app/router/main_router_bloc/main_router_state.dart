part of 'main_router_bloc.dart';

@freezed
class MainRouterState with _$MainRouterState {
  const factory MainRouterState({
    @Default(0) int selectedIndex,
    @Default([]) List<MainRoute> routes,
    @Default(false) bool isError,
  }) = _MainRouterState;
}

@freezed
class MainRoute with _$MainRoute {
  const factory MainRoute.userSettings() = MainUserSettingsRoute;
  const factory MainRoute.themeSettings() = MainThemeSettingsRoute;
}
