part of 'main_router_bloc.dart';

@freezed
class MainRouterEvent with _$MainRouterEvent {
  const factory MainRouterEvent.changeSelectedIndex({
    required int selectedIndex,
  }) = MainRouterChangeSelectedIndex;
  const factory MainRouterEvent.addUserSettingsRoute() =
      MainRouterAddUserSettingsRoute;
  const factory MainRouterEvent.popUserSettingsRoute() =
      MainRouterPopUserSettingsRoute;
  const factory MainRouterEvent.addThemeSettingsRoute() =
      MainRouterAddThemeSettingsRoute;
  const factory MainRouterEvent.popThemeSettingsRoute() =
      MainRouterPopThemeSettingsRoute;
  const factory MainRouterEvent.reset() = MainRouterReset;
  const factory MainRouterEvent.resetWithSelectedIndex({required int index}) =
      MainRouterResetWithSelectedIndex;
  const factory MainRouterEvent.setError() = MainRouterError;
  const factory MainRouterEvent.resetError() = MainRouterResetError;
}
