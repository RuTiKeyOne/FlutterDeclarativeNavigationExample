import 'package:bloc/bloc.dart';
import 'package:flutter_declarative_navigation_example/core/data/model/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_router_event.dart';
part 'app_router_state.dart';
part 'app_router_bloc.freezed.dart';

class AppRouterBloc extends Bloc<AppRouterEvent, AppRouterState> {
  AppRouterBloc() : super(const AppRouterState()) {
    on<AppRouterAddBookDetails>(_addBookDetailsRoute);
    on<AppRouterPopBookDetails>(_popBookDetailsRoute);
    on<AppRouterSetError>(_setErrorFirstRoute);
    on<AppRouteSetBookList>(_setBookListRoute);
    on<AppRouterReset>(_reset);
  }

  void _reset(AppRouterReset event, Emitter<AppRouterState> emit) =>
      emit(const AppRouterState());

  void _addBookDetailsRoute(
      AppRouterAddBookDetails event, Emitter<AppRouterState> emit) {
    final routes = [
      ...state.routes,
      AppRouterRoute.bookDetails(book: event.book)
    ];
    emit(state.copyWith(routes: routes));
  }

  void _popBookDetailsRoute(
      AppRouterPopBookDetails event, Emitter<AppRouterState> emit) {
    final routes = [...state.routes]
      ..removeWhere((element) => element is AppRouterBookDetails);
    emit(state.copyWith(routes: routes));
  }

  void _setErrorFirstRoute(
      AppRouterSetError event, Emitter<AppRouterState> emit) {
    emit(state
        .copyWith(startRoute: const AppRouterStartRoute.error(), routes: []));
  }

  void _setBookListRoute(
      AppRouteSetBookList event, Emitter<AppRouterState> emit) {
    emit(state.copyWith(
        startRoute: const AppRouterStartRoute.bookList(), routes: []));
  }
}
