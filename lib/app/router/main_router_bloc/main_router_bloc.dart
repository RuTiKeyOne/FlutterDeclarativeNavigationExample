import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_router_event.dart';
part 'main_router_state.dart';
part 'main_router_bloc.freezed.dart';

class MainRouterBloc extends Bloc<MainRouterEvent, MainRouterState> {
  MainRouterBloc() : super(const MainRouterState()) {
    on<MainRouterChangeSelectedIndex>(_changeSelectedIndex);
    on<MainRouterAddUserSettingsRoute>(_addUserSettingsRoute);
    on<MainRouterPopUserSettingsRoute>(_popUserSettingsRoute);
    on<MainRouterAddThemeSettingsRoute>(_addThemeSettingsRoute);
    on<MainRouterPopThemeSettingsRoute>(_popThemeSettingsRoute);
    on<MainRouterReset>(_reset);
    on<MainRouterResetWithSelectedIndex>(_resetWithSelectedIndex);
    on<MainRouterError>(_setError);
    on<MainRouterResetError>(_resetError);
  }

  void _changeSelectedIndex(
      MainRouterChangeSelectedIndex event, Emitter<MainRouterState> emit) {
    emit(state.copyWith(selectedIndex: event.selectedIndex));
  }

  void _addUserSettingsRoute(
      MainRouterAddUserSettingsRoute event, Emitter<MainRouterState> emit) {
    final routes = [...state.routes, const MainRoute.userSettings()];
    emit(state.copyWith(routes: routes));
  }

  void _popUserSettingsRoute(
      MainRouterPopUserSettingsRoute event, Emitter<MainRouterState> emit) {
    final routes = [...state.routes]..remove(const MainRoute.userSettings());
    emit(state.copyWith(routes: routes));
  }

  void _reset(MainRouterReset event, Emitter<MainRouterState> emit) {
    emit(const MainRouterState());
  }

  void _addThemeSettingsRoute(
      MainRouterAddThemeSettingsRoute event, Emitter<MainRouterState> emit) {
    final routes = [...state.routes, const MainRoute.themeSettings()];
    emit(state.copyWith(routes: routes));
  }

  void _popThemeSettingsRoute(
      MainRouterPopThemeSettingsRoute event, Emitter<MainRouterState> emit) {
    final routes = [...state.routes]..remove(const MainRoute.themeSettings());
    emit(state.copyWith(routes: routes));
  }

  void _resetWithSelectedIndex(
      MainRouterResetWithSelectedIndex event, Emitter<MainRouterState> emit) {
    emit(MainRouterState(selectedIndex: event.index));
  }

  void _setError(MainRouterError event, Emitter<MainRouterState> emit) {
    const state = MainRouterState();
    emit(state.copyWith(isError: true));
  }

  void _resetError(MainRouterResetError event, Emitter<MainRouterState> emit) {
    emit(state.copyWith(isError: false));
  }
}
