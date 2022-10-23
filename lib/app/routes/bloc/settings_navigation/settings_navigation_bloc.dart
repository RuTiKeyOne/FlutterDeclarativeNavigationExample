import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_navigation_event.dart';
part 'settings_navigation_state.dart';
part 'settings_navigation_bloc.freezed.dart';

class SettingsNavigationBloc
    extends Bloc<SettingsNavigationEvent, SettingsNavigationState> {
  SettingsNavigationBloc() : super(const SettingsNavigationState()) {
    on<_SettingsNavigationSetUserSettings>(_setUserSettings);
    on<_SettingsNavigationSetThemeSettings>(_setThemeSettings);
    on<_SettingsNavigationUserSettingsPop>(_popUserSettings);
    on<_SettingsNavigationThemeSettingsPop>(_popSettingsPop);
    on<_SettingsNavigationReset>(_reset);
  }

  void _setUserSettings(_SettingsNavigationSetUserSettings event,
      Emitter<SettingsNavigationState> emit) {
    final routes = [
      ...state.routes,
      const SettingsNavigationRoute.userSettings()
    ];
    emit(state.copyWith(routes: routes));
  }

  void _setThemeSettings(_SettingsNavigationSetThemeSettings event,
      Emitter<SettingsNavigationState> emit) {
    final routes = [
      ...state.routes,
      const SettingsNavigationRoute.themeSettings()
    ];
    emit(state.copyWith(routes: routes));
  }

  void _reset(_SettingsNavigationReset event,
          Emitter<SettingsNavigationState> emit) =>
      emit(const SettingsNavigationState());

  void _popUserSettings(_SettingsNavigationUserSettingsPop event,
      Emitter<SettingsNavigationState> emit) {
    final updatedRoutes = [...state.routes]..remove(const UserSettingsRoute());
    emit(state.copyWith(routes: updatedRoutes));
  }

  void _popSettingsPop(_SettingsNavigationThemeSettingsPop event,
      Emitter<SettingsNavigationState> emit) {
    final updatedRoutes = [...state.routes]..remove(const ThemeSettingsRoute());
    emit(state.copyWith(routes: updatedRoutes));
  }
}
