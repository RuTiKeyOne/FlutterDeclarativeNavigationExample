part of 'app_router_bloc.dart';

@freezed
class AppRouterEvent with _$AppRouterEvent {
  const factory AppRouterEvent.setSignin() = AppRouterSetSignin;
  const factory AppRouterEvent.setMain() = AppRouterSetMain;
  const factory AppRouterEvent.setError() = AppRouterSetError;
  const factory AppRouterEvent.addBasket() = AppRouterAddBasket;
  const factory AppRouterEvent.popBasket() = AppRouterPopBasket;
  const factory AppRouterEvent.reset() = AppRouterReset;
  const factory AppRouterEvent.addNecessaryRoute(
          {required AppRouterNecessaryRoute necessaryRoute}) =
      AppRouterAddNecessaryRoute;
  const factory AppRouterEvent.resetNecessaryRoute() =
      AppRouterResetNecessaryRoute;
}
