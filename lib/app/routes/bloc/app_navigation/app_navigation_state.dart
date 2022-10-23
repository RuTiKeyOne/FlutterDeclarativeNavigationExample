part of 'app_navigation_bloc.dart';

@freezed
class AppNavigationState with _$AppNavigationState {
  const factory AppNavigationState({
    required AppNavigationStartRoute startRoute,
    @Default([]) List<AppNavigationRoute> routes,
    @Default(null) AppNavigationNecessaryRoute? necessaryRoute,
  }) = _AppNavigationState;
}

@freezed
class AppNavigationStartRoute with _$AppNavigationStartRoute {
  const factory AppNavigationStartRoute.splash() =
      AppNavigationStartRouteSplash;
  const factory AppNavigationStartRoute.signin() =
      AppNavigationStartRouteSignin;
  const factory AppNavigationStartRoute.main({required AuthState authState}) =
      AppNavigationStartRouteMain;
}

@freezed
class AppNavigationRoute with _$AppNavigationRoute {
  const factory AppNavigationRoute.basket() = Backet;
}

@freezed
class AppNavigationNecessaryRoute with _$AppNavigationNecessaryRoute {
  const factory AppNavigationNecessaryRoute.basket() = NecessaryBacket;
}
