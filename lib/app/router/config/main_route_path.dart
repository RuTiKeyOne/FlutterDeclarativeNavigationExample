import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_route_path.freezed.dart';

@freezed
class MainRoutePath with _$MainRoutePath {
  const factory MainRoutePath.bookList() = MainRouteBookList;
  const factory MainRoutePath.settings() = MainRouteSettings;
  const factory MainRoutePath.userSettings() = MainRouteUserSettings;
  const factory MainRoutePath.themeSettings() = MainRouteThemeSettings;
  const factory MainRoutePath.error() = MainRouteError;
}
