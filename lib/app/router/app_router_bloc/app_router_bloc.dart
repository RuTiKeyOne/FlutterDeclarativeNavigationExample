import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_declarative_navigation_example/app/BLoC/auth/auth_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_router_event.dart';
part 'app_router_state.dart';
part 'app_router_bloc.freezed.dart';

class AppRouterBloc extends Bloc<AppRouterEvent, AppRouterState> {
  late final StreamSubscription<AuthState> _authStreamSubscription;
  AuthState get authState => _authBloc.state;
  late final AuthBloc _authBloc;

  AppRouterBloc({required AuthBloc authBloc})
      : super(
          const AppRouterState(startRoute: AppRouterStartRoute.splash()),
        ) {
    _authBloc = authBloc;
    _authStreamSubscription = authBloc.stream.listen(_listenAuthBloc);

    on<AppRouterSetSignin>(_setSignin);
    on<AppRouterSetMain>(_setMain);
    on<AppRouterSetError>(_setError);
    on<AppRouterAddBasket>(_addBasket);
    on<AppRouterPopBasket>(_popBasket);
    on<AppRouterReset>(_reset);
    on<AppRouterAddNecessaryRoute>(_addNecessaryRoute);
    on<AppRouterResetNecessaryRoute>(_resetNecessaryRoute);
  }

  void _listenAuthBloc(AuthState authState) {
    if (authState is NotAuthorized) {
      add(const AppRouterEvent.setSignin());
    } else if (authState is AuthAnonymous || authState is Auth) {
      add(const AppRouterEvent.setMain());
    }
  }

  @override
  Future<void> close() {
    _authStreamSubscription.cancel();
    return super.close();
  }

  void _setSignin(AppRouterSetSignin event, Emitter<AppRouterState> emit) {
    _authBloc.add(const AuthEvent.setNotAuthorized());
    emit(state
        .copyWith(startRoute: const AppRouterStartRoute.signin(), routes: []));
  }

  void _setMain(AppRouterSetMain event, Emitter<AppRouterState> emit) {
    emit(state.copyWith(
        startRoute: AppRouterStartRoute.main(authState: authState),
        routes: []));
  }

  void _setError(AppRouterSetError event, Emitter<AppRouterState> emit) {
    emit(state
        .copyWith(startRoute: const AppRouterStartRoute.error(), routes: []));
  }

  void _addBasket(AppRouterAddBasket event, Emitter<AppRouterState> emit) {
    final routes = [...state.routes, const AppRouterRoute.basket()];
    emit(state.copyWith(routes: routes));
  }

  void _popBasket(AppRouterPopBasket event, Emitter<AppRouterState> emit) {
    final routes = [...state.routes]..remove(const AppRouterRoute.basket());
    emit(state.copyWith(routes: routes));
  }

  void _reset(AppRouterReset event, Emitter<AppRouterState> emit) {
    final startRoute = authState.when(
      unknown: () => const AppRouterStartRoute.splash(),
      notAuthorized: () => const AppRouterStartRoute.signin(),
      auth: () => AppRouterStartRoute.main(authState: authState),
      authAnonymous: () => AppRouterStartRoute.main(authState: authState),
    );
    emit(AppRouterState(startRoute: startRoute));
  }

  void _addNecessaryRoute(
      AppRouterAddNecessaryRoute event, Emitter<AppRouterState> emit) {
    final necessaryRoute = event.necessaryRoute;
    emit(state.copyWith(necessaryRoute: necessaryRoute));
  }

  void _resetNecessaryRoute(
      AppRouterResetNecessaryRoute event, Emitter<AppRouterState> emit) {
    emit(state.copyWith(necessaryRoute: null));
  }
}
