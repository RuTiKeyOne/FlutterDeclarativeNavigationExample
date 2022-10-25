part of 'app_router_bloc.dart';

@freezed
class AppRouterState with _$AppRouterState {
  const factory AppRouterState({
    required AppRouterStartRoute startRoute,
    @Default([]) List<AppRouterRoute> routes,
    @Default(null) AppRouterNecessaryRoute? necessaryRoute,
  }) = _AppNavigationState;
}

@freezed
class AppRouterStartRoute with _$AppRouterStartRoute {
  const factory AppRouterStartRoute.splash() = AppRouterStartRouteSplash;
  const factory AppRouterStartRoute.signin() = AppRouterStartRouteSignin;
  const factory AppRouterStartRoute.main({required AuthState authState}) =
      AppRouterStartRouteMain;
  const factory AppRouterStartRoute.error() = AppRouterStartRouteError;
}

@freezed
class AppRouterRoute with _$AppRouterRoute {
  const factory AppRouterRoute.basket() = AppRouterRouteBasket;
}

@freezed
class AppRouterNecessaryRoute with _$AppRouterNecessaryRoute {
  const factory AppRouterNecessaryRoute.basket() = AppRouterNecessaryBacket;
}
