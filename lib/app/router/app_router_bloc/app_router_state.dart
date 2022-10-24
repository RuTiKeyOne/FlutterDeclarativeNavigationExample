part of 'app_router_bloc.dart';

@freezed
class AppRouterState with _$AppRouterState {
  AppRouterRoute get lastRoute => routes.last;

  const AppRouterState._();

  const factory AppRouterState({
    @Default(AppRouterStartRoute.bookList()) AppRouterStartRoute startRoute,
    @Default([]) List<AppRouterRoute> routes,
  }) = _AppRouterState;
}

@freezed
class AppRouterStartRoute with _$AppRouterStartRoute {
  const factory AppRouterStartRoute.bookList() = AppRouterStartBookList;
  const factory AppRouterStartRoute.error() = AppRouterStartError;
}

@freezed
class AppRouterRoute with _$AppRouterRoute {
  const factory AppRouterRoute.bookDetails({required Book book}) =
      AppRouterBookDetails;
}
