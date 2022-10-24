import 'package:flutter_declarative_navigation_example/core/data/model/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_path.freezed.dart';

@freezed
class RoutePath with _$RoutePath {
  const factory RoutePath.error() = BookErrorPath;
  const factory RoutePath.bookList() = BookListPath;
  const factory RoutePath.bookDetails({required Book book}) = BookDetailsPath;
}
