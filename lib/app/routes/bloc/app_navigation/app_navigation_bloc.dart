import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_declarative_navigation_example/app/BLoC/auth/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_navigation_event.dart';
part 'app_navigation_state.dart';
part 'app_navigation_bloc.freezed.dart';

class AppNavigationBloc extends Bloc<AppNavigationEvent, AppNavigationState> {
  late final StreamSubscription<AuthState> _authStreamSubscription;
  AuthState get authState => _authBloc.state;
  late final AuthBloc _authBloc;

  AppNavigationBloc({required AuthBloc authBloc})
      : super(
          const AppNavigationState(
              startRoute: AppNavigationStartRoute.splash()),
        ) {
    _authBloc = authBloc;
    _authStreamSubscription = authBloc.stream.listen(_listenAuthBloc);

    on<AppNavigationSetSignin>(_setSignin);
    on<AppNavigationSetMain>(_setMain);
    on<AppNavigationAddBasket>(_addBasket);
    on<AppNavigationPopBasket>(_popBasket);
    on<AppNavigationReset>(_reset);
    on<AppNavigationAddNecessaryRoute>(_addNecessaryRoute);
    on<AppNavigationResetNecessaryRoute>(_resetNecessaryRoute);
  }

  void _listenAuthBloc(AuthState authState) {
    if (authState is NotAuthorized) {
      add(const AppNavigationEvent.setSignin());
    } else if (authState is AuthAnonymous || authState is Auth) {
      add(const AppNavigationEvent.setMain());
    }
  }

  @override
  Future<void> close() {
    _authStreamSubscription.cancel();
    return super.close();
  }

  void _setSignin(
      AppNavigationSetSignin event, Emitter<AppNavigationState> emit) {
    _authBloc.add(const AuthEvent.setNotAuthorized());
    emit(state.copyWith(startRoute: const AppNavigationStartRoute.signin()));
  }

  void _setMain(AppNavigationSetMain event, Emitter<AppNavigationState> emit) {
    emit(state.copyWith(
        startRoute: AppNavigationStartRoute.main(authState: authState)));
  }

  void _addBasket(
      AppNavigationAddBasket event, Emitter<AppNavigationState> emit) {
    final routes = [...state.routes, const AppNavigationRoute.basket()];
    emit(state.copyWith(routes: routes));
  }

  void _popBasket(
      AppNavigationPopBasket event, Emitter<AppNavigationState> emit) {
    final routes = [...state.routes]..remove(const AppNavigationRoute.basket());
    emit(state.copyWith(routes: routes));
  }

  void _reset(AppNavigationReset event, Emitter<AppNavigationState> emit) {
    final startRoute = authState.when(
      unknown: () => const AppNavigationStartRoute.splash(),
      notAuthorized: () => const AppNavigationStartRoute.signin(),
      auth: () => AppNavigationStartRoute.main(authState: authState),
      authAnonymous: () => AppNavigationStartRoute.main(authState: authState),
    );
    emit(AppNavigationState(startRoute: startRoute));
  }

  void _addNecessaryRoute(
      AppNavigationAddNecessaryRoute event, Emitter<AppNavigationState> emit) {
    final necessaryRoute = event.necessaryRoute;
    emit(state.copyWith(necessaryRoute: necessaryRoute));
  }

  void _resetNecessaryRoute(AppNavigationResetNecessaryRoute event,
      Emitter<AppNavigationState> emit) {
    emit(state.copyWith(necessaryRoute: null));
  }
}
