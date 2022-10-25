import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_path.freezed.dart';

@freezed
class RoutePath with _$RoutePath {
  const factory RoutePath.error() = RouteErrorPath;
  const factory RoutePath.signin() = RouteSigninPath;
  const factory RoutePath.main() = RouteMainPath;
  const factory RoutePath.splash() = RouteSplashPath;
  const factory RoutePath.basket() = RouteBasketPath;
}
