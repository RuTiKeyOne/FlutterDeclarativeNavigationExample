part of 'app_navigation_bloc.dart';

@freezed
class AppNavigationEvent with _$AppNavigationEvent {
  const factory AppNavigationEvent.setSignin() = AppNavigationSetSignin;
  const factory AppNavigationEvent.setMain() = AppNavigationSetMain;
  const factory AppNavigationEvent.addBasket() = AppNavigationAddBasket;
  const factory AppNavigationEvent.popBasket() = AppNavigationPopBasket;
  const factory AppNavigationEvent.reset() = AppNavigationReset;
  const factory AppNavigationEvent.addNecessaryRoute(
          {required AppNavigationNecessaryRoute necessaryRoute}) =
      AppNavigationAddNecessaryRoute;
  const factory AppNavigationEvent.resetNecessaryRoute() =
      AppNavigationResetNecessaryRoute;
}
