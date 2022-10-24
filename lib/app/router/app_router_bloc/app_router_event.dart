part of 'app_router_bloc.dart';

@freezed
class AppRouterEvent with _$AppRouterEvent {
  const factory AppRouterEvent.reset() = AppRouterReset;
  const factory AppRouterEvent.addBookDetails({required Book book}) =
      AppRouterAddBookDetails;
  const factory AppRouterEvent.popBookDetails() = AppRouterPopBookDetails;
  const factory AppRouterEvent.setErrorFirstRoute() = AppRouterSetError;
  const factory AppRouterEvent.setBookListFirstRoute() = AppRouteSetBookList;
}
