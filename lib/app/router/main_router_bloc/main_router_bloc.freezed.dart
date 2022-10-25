// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_router_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainRouterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) changeSelectedIndex,
    required TResult Function() addUserSettingsRoute,
    required TResult Function() popUserSettingsRoute,
    required TResult Function() addThemeSettingsRoute,
    required TResult Function() popThemeSettingsRoute,
    required TResult Function() reset,
    required TResult Function(int index) resetWithSelectedIndex,
    required TResult Function() setError,
    required TResult Function() resetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? changeSelectedIndex,
    TResult? Function()? addUserSettingsRoute,
    TResult? Function()? popUserSettingsRoute,
    TResult? Function()? addThemeSettingsRoute,
    TResult? Function()? popThemeSettingsRoute,
    TResult? Function()? reset,
    TResult? Function(int index)? resetWithSelectedIndex,
    TResult? Function()? setError,
    TResult? Function()? resetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? changeSelectedIndex,
    TResult Function()? addUserSettingsRoute,
    TResult Function()? popUserSettingsRoute,
    TResult Function()? addThemeSettingsRoute,
    TResult Function()? popThemeSettingsRoute,
    TResult Function()? reset,
    TResult Function(int index)? resetWithSelectedIndex,
    TResult Function()? setError,
    TResult Function()? resetError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainRouterChangeSelectedIndex value)
        changeSelectedIndex,
    required TResult Function(MainRouterAddUserSettingsRoute value)
        addUserSettingsRoute,
    required TResult Function(MainRouterPopUserSettingsRoute value)
        popUserSettingsRoute,
    required TResult Function(MainRouterAddThemeSettingsRoute value)
        addThemeSettingsRoute,
    required TResult Function(MainRouterPopThemeSettingsRoute value)
        popThemeSettingsRoute,
    required TResult Function(MainRouterReset value) reset,
    required TResult Function(MainRouterResetWithSelectedIndex value)
        resetWithSelectedIndex,
    required TResult Function(MainRouterError value) setError,
    required TResult Function(MainRouterResetError value) resetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult? Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult? Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult? Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult? Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult? Function(MainRouterReset value)? reset,
    TResult? Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult? Function(MainRouterError value)? setError,
    TResult? Function(MainRouterResetError value)? resetError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult Function(MainRouterReset value)? reset,
    TResult Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult Function(MainRouterError value)? setError,
    TResult Function(MainRouterResetError value)? resetError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainRouterEventCopyWith<$Res> {
  factory $MainRouterEventCopyWith(
          MainRouterEvent value, $Res Function(MainRouterEvent) then) =
      _$MainRouterEventCopyWithImpl<$Res, MainRouterEvent>;
}

/// @nodoc
class _$MainRouterEventCopyWithImpl<$Res, $Val extends MainRouterEvent>
    implements $MainRouterEventCopyWith<$Res> {
  _$MainRouterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainRouterChangeSelectedIndexCopyWith<$Res> {
  factory _$$MainRouterChangeSelectedIndexCopyWith(
          _$MainRouterChangeSelectedIndex value,
          $Res Function(_$MainRouterChangeSelectedIndex) then) =
      __$$MainRouterChangeSelectedIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$MainRouterChangeSelectedIndexCopyWithImpl<$Res>
    extends _$MainRouterEventCopyWithImpl<$Res, _$MainRouterChangeSelectedIndex>
    implements _$$MainRouterChangeSelectedIndexCopyWith<$Res> {
  __$$MainRouterChangeSelectedIndexCopyWithImpl(
      _$MainRouterChangeSelectedIndex _value,
      $Res Function(_$MainRouterChangeSelectedIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$MainRouterChangeSelectedIndex(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainRouterChangeSelectedIndex implements MainRouterChangeSelectedIndex {
  const _$MainRouterChangeSelectedIndex({required this.selectedIndex});

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'MainRouterEvent.changeSelectedIndex(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainRouterChangeSelectedIndex &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainRouterChangeSelectedIndexCopyWith<_$MainRouterChangeSelectedIndex>
      get copyWith => __$$MainRouterChangeSelectedIndexCopyWithImpl<
          _$MainRouterChangeSelectedIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) changeSelectedIndex,
    required TResult Function() addUserSettingsRoute,
    required TResult Function() popUserSettingsRoute,
    required TResult Function() addThemeSettingsRoute,
    required TResult Function() popThemeSettingsRoute,
    required TResult Function() reset,
    required TResult Function(int index) resetWithSelectedIndex,
    required TResult Function() setError,
    required TResult Function() resetError,
  }) {
    return changeSelectedIndex(selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? changeSelectedIndex,
    TResult? Function()? addUserSettingsRoute,
    TResult? Function()? popUserSettingsRoute,
    TResult? Function()? addThemeSettingsRoute,
    TResult? Function()? popThemeSettingsRoute,
    TResult? Function()? reset,
    TResult? Function(int index)? resetWithSelectedIndex,
    TResult? Function()? setError,
    TResult? Function()? resetError,
  }) {
    return changeSelectedIndex?.call(selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? changeSelectedIndex,
    TResult Function()? addUserSettingsRoute,
    TResult Function()? popUserSettingsRoute,
    TResult Function()? addThemeSettingsRoute,
    TResult Function()? popThemeSettingsRoute,
    TResult Function()? reset,
    TResult Function(int index)? resetWithSelectedIndex,
    TResult Function()? setError,
    TResult Function()? resetError,
    required TResult orElse(),
  }) {
    if (changeSelectedIndex != null) {
      return changeSelectedIndex(selectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainRouterChangeSelectedIndex value)
        changeSelectedIndex,
    required TResult Function(MainRouterAddUserSettingsRoute value)
        addUserSettingsRoute,
    required TResult Function(MainRouterPopUserSettingsRoute value)
        popUserSettingsRoute,
    required TResult Function(MainRouterAddThemeSettingsRoute value)
        addThemeSettingsRoute,
    required TResult Function(MainRouterPopThemeSettingsRoute value)
        popThemeSettingsRoute,
    required TResult Function(MainRouterReset value) reset,
    required TResult Function(MainRouterResetWithSelectedIndex value)
        resetWithSelectedIndex,
    required TResult Function(MainRouterError value) setError,
    required TResult Function(MainRouterResetError value) resetError,
  }) {
    return changeSelectedIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult? Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult? Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult? Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult? Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult? Function(MainRouterReset value)? reset,
    TResult? Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult? Function(MainRouterError value)? setError,
    TResult? Function(MainRouterResetError value)? resetError,
  }) {
    return changeSelectedIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult Function(MainRouterReset value)? reset,
    TResult Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult Function(MainRouterError value)? setError,
    TResult Function(MainRouterResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (changeSelectedIndex != null) {
      return changeSelectedIndex(this);
    }
    return orElse();
  }
}

abstract class MainRouterChangeSelectedIndex implements MainRouterEvent {
  const factory MainRouterChangeSelectedIndex(
      {required final int selectedIndex}) = _$MainRouterChangeSelectedIndex;

  int get selectedIndex;
  @JsonKey(ignore: true)
  _$$MainRouterChangeSelectedIndexCopyWith<_$MainRouterChangeSelectedIndex>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainRouterAddUserSettingsRouteCopyWith<$Res> {
  factory _$$MainRouterAddUserSettingsRouteCopyWith(
          _$MainRouterAddUserSettingsRoute value,
          $Res Function(_$MainRouterAddUserSettingsRoute) then) =
      __$$MainRouterAddUserSettingsRouteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainRouterAddUserSettingsRouteCopyWithImpl<$Res>
    extends _$MainRouterEventCopyWithImpl<$Res,
        _$MainRouterAddUserSettingsRoute>
    implements _$$MainRouterAddUserSettingsRouteCopyWith<$Res> {
  __$$MainRouterAddUserSettingsRouteCopyWithImpl(
      _$MainRouterAddUserSettingsRoute _value,
      $Res Function(_$MainRouterAddUserSettingsRoute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainRouterAddUserSettingsRoute
    implements MainRouterAddUserSettingsRoute {
  const _$MainRouterAddUserSettingsRoute();

  @override
  String toString() {
    return 'MainRouterEvent.addUserSettingsRoute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainRouterAddUserSettingsRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) changeSelectedIndex,
    required TResult Function() addUserSettingsRoute,
    required TResult Function() popUserSettingsRoute,
    required TResult Function() addThemeSettingsRoute,
    required TResult Function() popThemeSettingsRoute,
    required TResult Function() reset,
    required TResult Function(int index) resetWithSelectedIndex,
    required TResult Function() setError,
    required TResult Function() resetError,
  }) {
    return addUserSettingsRoute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? changeSelectedIndex,
    TResult? Function()? addUserSettingsRoute,
    TResult? Function()? popUserSettingsRoute,
    TResult? Function()? addThemeSettingsRoute,
    TResult? Function()? popThemeSettingsRoute,
    TResult? Function()? reset,
    TResult? Function(int index)? resetWithSelectedIndex,
    TResult? Function()? setError,
    TResult? Function()? resetError,
  }) {
    return addUserSettingsRoute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? changeSelectedIndex,
    TResult Function()? addUserSettingsRoute,
    TResult Function()? popUserSettingsRoute,
    TResult Function()? addThemeSettingsRoute,
    TResult Function()? popThemeSettingsRoute,
    TResult Function()? reset,
    TResult Function(int index)? resetWithSelectedIndex,
    TResult Function()? setError,
    TResult Function()? resetError,
    required TResult orElse(),
  }) {
    if (addUserSettingsRoute != null) {
      return addUserSettingsRoute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainRouterChangeSelectedIndex value)
        changeSelectedIndex,
    required TResult Function(MainRouterAddUserSettingsRoute value)
        addUserSettingsRoute,
    required TResult Function(MainRouterPopUserSettingsRoute value)
        popUserSettingsRoute,
    required TResult Function(MainRouterAddThemeSettingsRoute value)
        addThemeSettingsRoute,
    required TResult Function(MainRouterPopThemeSettingsRoute value)
        popThemeSettingsRoute,
    required TResult Function(MainRouterReset value) reset,
    required TResult Function(MainRouterResetWithSelectedIndex value)
        resetWithSelectedIndex,
    required TResult Function(MainRouterError value) setError,
    required TResult Function(MainRouterResetError value) resetError,
  }) {
    return addUserSettingsRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult? Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult? Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult? Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult? Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult? Function(MainRouterReset value)? reset,
    TResult? Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult? Function(MainRouterError value)? setError,
    TResult? Function(MainRouterResetError value)? resetError,
  }) {
    return addUserSettingsRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult Function(MainRouterReset value)? reset,
    TResult Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult Function(MainRouterError value)? setError,
    TResult Function(MainRouterResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (addUserSettingsRoute != null) {
      return addUserSettingsRoute(this);
    }
    return orElse();
  }
}

abstract class MainRouterAddUserSettingsRoute implements MainRouterEvent {
  const factory MainRouterAddUserSettingsRoute() =
      _$MainRouterAddUserSettingsRoute;
}

/// @nodoc
abstract class _$$MainRouterPopUserSettingsRouteCopyWith<$Res> {
  factory _$$MainRouterPopUserSettingsRouteCopyWith(
          _$MainRouterPopUserSettingsRoute value,
          $Res Function(_$MainRouterPopUserSettingsRoute) then) =
      __$$MainRouterPopUserSettingsRouteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainRouterPopUserSettingsRouteCopyWithImpl<$Res>
    extends _$MainRouterEventCopyWithImpl<$Res,
        _$MainRouterPopUserSettingsRoute>
    implements _$$MainRouterPopUserSettingsRouteCopyWith<$Res> {
  __$$MainRouterPopUserSettingsRouteCopyWithImpl(
      _$MainRouterPopUserSettingsRoute _value,
      $Res Function(_$MainRouterPopUserSettingsRoute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainRouterPopUserSettingsRoute
    implements MainRouterPopUserSettingsRoute {
  const _$MainRouterPopUserSettingsRoute();

  @override
  String toString() {
    return 'MainRouterEvent.popUserSettingsRoute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainRouterPopUserSettingsRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) changeSelectedIndex,
    required TResult Function() addUserSettingsRoute,
    required TResult Function() popUserSettingsRoute,
    required TResult Function() addThemeSettingsRoute,
    required TResult Function() popThemeSettingsRoute,
    required TResult Function() reset,
    required TResult Function(int index) resetWithSelectedIndex,
    required TResult Function() setError,
    required TResult Function() resetError,
  }) {
    return popUserSettingsRoute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? changeSelectedIndex,
    TResult? Function()? addUserSettingsRoute,
    TResult? Function()? popUserSettingsRoute,
    TResult? Function()? addThemeSettingsRoute,
    TResult? Function()? popThemeSettingsRoute,
    TResult? Function()? reset,
    TResult? Function(int index)? resetWithSelectedIndex,
    TResult? Function()? setError,
    TResult? Function()? resetError,
  }) {
    return popUserSettingsRoute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? changeSelectedIndex,
    TResult Function()? addUserSettingsRoute,
    TResult Function()? popUserSettingsRoute,
    TResult Function()? addThemeSettingsRoute,
    TResult Function()? popThemeSettingsRoute,
    TResult Function()? reset,
    TResult Function(int index)? resetWithSelectedIndex,
    TResult Function()? setError,
    TResult Function()? resetError,
    required TResult orElse(),
  }) {
    if (popUserSettingsRoute != null) {
      return popUserSettingsRoute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainRouterChangeSelectedIndex value)
        changeSelectedIndex,
    required TResult Function(MainRouterAddUserSettingsRoute value)
        addUserSettingsRoute,
    required TResult Function(MainRouterPopUserSettingsRoute value)
        popUserSettingsRoute,
    required TResult Function(MainRouterAddThemeSettingsRoute value)
        addThemeSettingsRoute,
    required TResult Function(MainRouterPopThemeSettingsRoute value)
        popThemeSettingsRoute,
    required TResult Function(MainRouterReset value) reset,
    required TResult Function(MainRouterResetWithSelectedIndex value)
        resetWithSelectedIndex,
    required TResult Function(MainRouterError value) setError,
    required TResult Function(MainRouterResetError value) resetError,
  }) {
    return popUserSettingsRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult? Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult? Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult? Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult? Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult? Function(MainRouterReset value)? reset,
    TResult? Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult? Function(MainRouterError value)? setError,
    TResult? Function(MainRouterResetError value)? resetError,
  }) {
    return popUserSettingsRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult Function(MainRouterReset value)? reset,
    TResult Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult Function(MainRouterError value)? setError,
    TResult Function(MainRouterResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (popUserSettingsRoute != null) {
      return popUserSettingsRoute(this);
    }
    return orElse();
  }
}

abstract class MainRouterPopUserSettingsRoute implements MainRouterEvent {
  const factory MainRouterPopUserSettingsRoute() =
      _$MainRouterPopUserSettingsRoute;
}

/// @nodoc
abstract class _$$MainRouterAddThemeSettingsRouteCopyWith<$Res> {
  factory _$$MainRouterAddThemeSettingsRouteCopyWith(
          _$MainRouterAddThemeSettingsRoute value,
          $Res Function(_$MainRouterAddThemeSettingsRoute) then) =
      __$$MainRouterAddThemeSettingsRouteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainRouterAddThemeSettingsRouteCopyWithImpl<$Res>
    extends _$MainRouterEventCopyWithImpl<$Res,
        _$MainRouterAddThemeSettingsRoute>
    implements _$$MainRouterAddThemeSettingsRouteCopyWith<$Res> {
  __$$MainRouterAddThemeSettingsRouteCopyWithImpl(
      _$MainRouterAddThemeSettingsRoute _value,
      $Res Function(_$MainRouterAddThemeSettingsRoute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainRouterAddThemeSettingsRoute
    implements MainRouterAddThemeSettingsRoute {
  const _$MainRouterAddThemeSettingsRoute();

  @override
  String toString() {
    return 'MainRouterEvent.addThemeSettingsRoute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainRouterAddThemeSettingsRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) changeSelectedIndex,
    required TResult Function() addUserSettingsRoute,
    required TResult Function() popUserSettingsRoute,
    required TResult Function() addThemeSettingsRoute,
    required TResult Function() popThemeSettingsRoute,
    required TResult Function() reset,
    required TResult Function(int index) resetWithSelectedIndex,
    required TResult Function() setError,
    required TResult Function() resetError,
  }) {
    return addThemeSettingsRoute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? changeSelectedIndex,
    TResult? Function()? addUserSettingsRoute,
    TResult? Function()? popUserSettingsRoute,
    TResult? Function()? addThemeSettingsRoute,
    TResult? Function()? popThemeSettingsRoute,
    TResult? Function()? reset,
    TResult? Function(int index)? resetWithSelectedIndex,
    TResult? Function()? setError,
    TResult? Function()? resetError,
  }) {
    return addThemeSettingsRoute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? changeSelectedIndex,
    TResult Function()? addUserSettingsRoute,
    TResult Function()? popUserSettingsRoute,
    TResult Function()? addThemeSettingsRoute,
    TResult Function()? popThemeSettingsRoute,
    TResult Function()? reset,
    TResult Function(int index)? resetWithSelectedIndex,
    TResult Function()? setError,
    TResult Function()? resetError,
    required TResult orElse(),
  }) {
    if (addThemeSettingsRoute != null) {
      return addThemeSettingsRoute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainRouterChangeSelectedIndex value)
        changeSelectedIndex,
    required TResult Function(MainRouterAddUserSettingsRoute value)
        addUserSettingsRoute,
    required TResult Function(MainRouterPopUserSettingsRoute value)
        popUserSettingsRoute,
    required TResult Function(MainRouterAddThemeSettingsRoute value)
        addThemeSettingsRoute,
    required TResult Function(MainRouterPopThemeSettingsRoute value)
        popThemeSettingsRoute,
    required TResult Function(MainRouterReset value) reset,
    required TResult Function(MainRouterResetWithSelectedIndex value)
        resetWithSelectedIndex,
    required TResult Function(MainRouterError value) setError,
    required TResult Function(MainRouterResetError value) resetError,
  }) {
    return addThemeSettingsRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult? Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult? Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult? Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult? Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult? Function(MainRouterReset value)? reset,
    TResult? Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult? Function(MainRouterError value)? setError,
    TResult? Function(MainRouterResetError value)? resetError,
  }) {
    return addThemeSettingsRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult Function(MainRouterReset value)? reset,
    TResult Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult Function(MainRouterError value)? setError,
    TResult Function(MainRouterResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (addThemeSettingsRoute != null) {
      return addThemeSettingsRoute(this);
    }
    return orElse();
  }
}

abstract class MainRouterAddThemeSettingsRoute implements MainRouterEvent {
  const factory MainRouterAddThemeSettingsRoute() =
      _$MainRouterAddThemeSettingsRoute;
}

/// @nodoc
abstract class _$$MainRouterPopThemeSettingsRouteCopyWith<$Res> {
  factory _$$MainRouterPopThemeSettingsRouteCopyWith(
          _$MainRouterPopThemeSettingsRoute value,
          $Res Function(_$MainRouterPopThemeSettingsRoute) then) =
      __$$MainRouterPopThemeSettingsRouteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainRouterPopThemeSettingsRouteCopyWithImpl<$Res>
    extends _$MainRouterEventCopyWithImpl<$Res,
        _$MainRouterPopThemeSettingsRoute>
    implements _$$MainRouterPopThemeSettingsRouteCopyWith<$Res> {
  __$$MainRouterPopThemeSettingsRouteCopyWithImpl(
      _$MainRouterPopThemeSettingsRoute _value,
      $Res Function(_$MainRouterPopThemeSettingsRoute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainRouterPopThemeSettingsRoute
    implements MainRouterPopThemeSettingsRoute {
  const _$MainRouterPopThemeSettingsRoute();

  @override
  String toString() {
    return 'MainRouterEvent.popThemeSettingsRoute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainRouterPopThemeSettingsRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) changeSelectedIndex,
    required TResult Function() addUserSettingsRoute,
    required TResult Function() popUserSettingsRoute,
    required TResult Function() addThemeSettingsRoute,
    required TResult Function() popThemeSettingsRoute,
    required TResult Function() reset,
    required TResult Function(int index) resetWithSelectedIndex,
    required TResult Function() setError,
    required TResult Function() resetError,
  }) {
    return popThemeSettingsRoute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? changeSelectedIndex,
    TResult? Function()? addUserSettingsRoute,
    TResult? Function()? popUserSettingsRoute,
    TResult? Function()? addThemeSettingsRoute,
    TResult? Function()? popThemeSettingsRoute,
    TResult? Function()? reset,
    TResult? Function(int index)? resetWithSelectedIndex,
    TResult? Function()? setError,
    TResult? Function()? resetError,
  }) {
    return popThemeSettingsRoute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? changeSelectedIndex,
    TResult Function()? addUserSettingsRoute,
    TResult Function()? popUserSettingsRoute,
    TResult Function()? addThemeSettingsRoute,
    TResult Function()? popThemeSettingsRoute,
    TResult Function()? reset,
    TResult Function(int index)? resetWithSelectedIndex,
    TResult Function()? setError,
    TResult Function()? resetError,
    required TResult orElse(),
  }) {
    if (popThemeSettingsRoute != null) {
      return popThemeSettingsRoute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainRouterChangeSelectedIndex value)
        changeSelectedIndex,
    required TResult Function(MainRouterAddUserSettingsRoute value)
        addUserSettingsRoute,
    required TResult Function(MainRouterPopUserSettingsRoute value)
        popUserSettingsRoute,
    required TResult Function(MainRouterAddThemeSettingsRoute value)
        addThemeSettingsRoute,
    required TResult Function(MainRouterPopThemeSettingsRoute value)
        popThemeSettingsRoute,
    required TResult Function(MainRouterReset value) reset,
    required TResult Function(MainRouterResetWithSelectedIndex value)
        resetWithSelectedIndex,
    required TResult Function(MainRouterError value) setError,
    required TResult Function(MainRouterResetError value) resetError,
  }) {
    return popThemeSettingsRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult? Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult? Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult? Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult? Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult? Function(MainRouterReset value)? reset,
    TResult? Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult? Function(MainRouterError value)? setError,
    TResult? Function(MainRouterResetError value)? resetError,
  }) {
    return popThemeSettingsRoute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult Function(MainRouterReset value)? reset,
    TResult Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult Function(MainRouterError value)? setError,
    TResult Function(MainRouterResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (popThemeSettingsRoute != null) {
      return popThemeSettingsRoute(this);
    }
    return orElse();
  }
}

abstract class MainRouterPopThemeSettingsRoute implements MainRouterEvent {
  const factory MainRouterPopThemeSettingsRoute() =
      _$MainRouterPopThemeSettingsRoute;
}

/// @nodoc
abstract class _$$MainRouterResetCopyWith<$Res> {
  factory _$$MainRouterResetCopyWith(
          _$MainRouterReset value, $Res Function(_$MainRouterReset) then) =
      __$$MainRouterResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainRouterResetCopyWithImpl<$Res>
    extends _$MainRouterEventCopyWithImpl<$Res, _$MainRouterReset>
    implements _$$MainRouterResetCopyWith<$Res> {
  __$$MainRouterResetCopyWithImpl(
      _$MainRouterReset _value, $Res Function(_$MainRouterReset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainRouterReset implements MainRouterReset {
  const _$MainRouterReset();

  @override
  String toString() {
    return 'MainRouterEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainRouterReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) changeSelectedIndex,
    required TResult Function() addUserSettingsRoute,
    required TResult Function() popUserSettingsRoute,
    required TResult Function() addThemeSettingsRoute,
    required TResult Function() popThemeSettingsRoute,
    required TResult Function() reset,
    required TResult Function(int index) resetWithSelectedIndex,
    required TResult Function() setError,
    required TResult Function() resetError,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? changeSelectedIndex,
    TResult? Function()? addUserSettingsRoute,
    TResult? Function()? popUserSettingsRoute,
    TResult? Function()? addThemeSettingsRoute,
    TResult? Function()? popThemeSettingsRoute,
    TResult? Function()? reset,
    TResult? Function(int index)? resetWithSelectedIndex,
    TResult? Function()? setError,
    TResult? Function()? resetError,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? changeSelectedIndex,
    TResult Function()? addUserSettingsRoute,
    TResult Function()? popUserSettingsRoute,
    TResult Function()? addThemeSettingsRoute,
    TResult Function()? popThemeSettingsRoute,
    TResult Function()? reset,
    TResult Function(int index)? resetWithSelectedIndex,
    TResult Function()? setError,
    TResult Function()? resetError,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainRouterChangeSelectedIndex value)
        changeSelectedIndex,
    required TResult Function(MainRouterAddUserSettingsRoute value)
        addUserSettingsRoute,
    required TResult Function(MainRouterPopUserSettingsRoute value)
        popUserSettingsRoute,
    required TResult Function(MainRouterAddThemeSettingsRoute value)
        addThemeSettingsRoute,
    required TResult Function(MainRouterPopThemeSettingsRoute value)
        popThemeSettingsRoute,
    required TResult Function(MainRouterReset value) reset,
    required TResult Function(MainRouterResetWithSelectedIndex value)
        resetWithSelectedIndex,
    required TResult Function(MainRouterError value) setError,
    required TResult Function(MainRouterResetError value) resetError,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult? Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult? Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult? Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult? Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult? Function(MainRouterReset value)? reset,
    TResult? Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult? Function(MainRouterError value)? setError,
    TResult? Function(MainRouterResetError value)? resetError,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult Function(MainRouterReset value)? reset,
    TResult Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult Function(MainRouterError value)? setError,
    TResult Function(MainRouterResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class MainRouterReset implements MainRouterEvent {
  const factory MainRouterReset() = _$MainRouterReset;
}

/// @nodoc
abstract class _$$MainRouterResetWithSelectedIndexCopyWith<$Res> {
  factory _$$MainRouterResetWithSelectedIndexCopyWith(
          _$MainRouterResetWithSelectedIndex value,
          $Res Function(_$MainRouterResetWithSelectedIndex) then) =
      __$$MainRouterResetWithSelectedIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$MainRouterResetWithSelectedIndexCopyWithImpl<$Res>
    extends _$MainRouterEventCopyWithImpl<$Res,
        _$MainRouterResetWithSelectedIndex>
    implements _$$MainRouterResetWithSelectedIndexCopyWith<$Res> {
  __$$MainRouterResetWithSelectedIndexCopyWithImpl(
      _$MainRouterResetWithSelectedIndex _value,
      $Res Function(_$MainRouterResetWithSelectedIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$MainRouterResetWithSelectedIndex(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainRouterResetWithSelectedIndex
    implements MainRouterResetWithSelectedIndex {
  const _$MainRouterResetWithSelectedIndex({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'MainRouterEvent.resetWithSelectedIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainRouterResetWithSelectedIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainRouterResetWithSelectedIndexCopyWith<
          _$MainRouterResetWithSelectedIndex>
      get copyWith => __$$MainRouterResetWithSelectedIndexCopyWithImpl<
          _$MainRouterResetWithSelectedIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) changeSelectedIndex,
    required TResult Function() addUserSettingsRoute,
    required TResult Function() popUserSettingsRoute,
    required TResult Function() addThemeSettingsRoute,
    required TResult Function() popThemeSettingsRoute,
    required TResult Function() reset,
    required TResult Function(int index) resetWithSelectedIndex,
    required TResult Function() setError,
    required TResult Function() resetError,
  }) {
    return resetWithSelectedIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? changeSelectedIndex,
    TResult? Function()? addUserSettingsRoute,
    TResult? Function()? popUserSettingsRoute,
    TResult? Function()? addThemeSettingsRoute,
    TResult? Function()? popThemeSettingsRoute,
    TResult? Function()? reset,
    TResult? Function(int index)? resetWithSelectedIndex,
    TResult? Function()? setError,
    TResult? Function()? resetError,
  }) {
    return resetWithSelectedIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? changeSelectedIndex,
    TResult Function()? addUserSettingsRoute,
    TResult Function()? popUserSettingsRoute,
    TResult Function()? addThemeSettingsRoute,
    TResult Function()? popThemeSettingsRoute,
    TResult Function()? reset,
    TResult Function(int index)? resetWithSelectedIndex,
    TResult Function()? setError,
    TResult Function()? resetError,
    required TResult orElse(),
  }) {
    if (resetWithSelectedIndex != null) {
      return resetWithSelectedIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainRouterChangeSelectedIndex value)
        changeSelectedIndex,
    required TResult Function(MainRouterAddUserSettingsRoute value)
        addUserSettingsRoute,
    required TResult Function(MainRouterPopUserSettingsRoute value)
        popUserSettingsRoute,
    required TResult Function(MainRouterAddThemeSettingsRoute value)
        addThemeSettingsRoute,
    required TResult Function(MainRouterPopThemeSettingsRoute value)
        popThemeSettingsRoute,
    required TResult Function(MainRouterReset value) reset,
    required TResult Function(MainRouterResetWithSelectedIndex value)
        resetWithSelectedIndex,
    required TResult Function(MainRouterError value) setError,
    required TResult Function(MainRouterResetError value) resetError,
  }) {
    return resetWithSelectedIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult? Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult? Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult? Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult? Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult? Function(MainRouterReset value)? reset,
    TResult? Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult? Function(MainRouterError value)? setError,
    TResult? Function(MainRouterResetError value)? resetError,
  }) {
    return resetWithSelectedIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult Function(MainRouterReset value)? reset,
    TResult Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult Function(MainRouterError value)? setError,
    TResult Function(MainRouterResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (resetWithSelectedIndex != null) {
      return resetWithSelectedIndex(this);
    }
    return orElse();
  }
}

abstract class MainRouterResetWithSelectedIndex implements MainRouterEvent {
  const factory MainRouterResetWithSelectedIndex({required final int index}) =
      _$MainRouterResetWithSelectedIndex;

  int get index;
  @JsonKey(ignore: true)
  _$$MainRouterResetWithSelectedIndexCopyWith<
          _$MainRouterResetWithSelectedIndex>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainRouterErrorCopyWith<$Res> {
  factory _$$MainRouterErrorCopyWith(
          _$MainRouterError value, $Res Function(_$MainRouterError) then) =
      __$$MainRouterErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainRouterErrorCopyWithImpl<$Res>
    extends _$MainRouterEventCopyWithImpl<$Res, _$MainRouterError>
    implements _$$MainRouterErrorCopyWith<$Res> {
  __$$MainRouterErrorCopyWithImpl(
      _$MainRouterError _value, $Res Function(_$MainRouterError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainRouterError implements MainRouterError {
  const _$MainRouterError();

  @override
  String toString() {
    return 'MainRouterEvent.setError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainRouterError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) changeSelectedIndex,
    required TResult Function() addUserSettingsRoute,
    required TResult Function() popUserSettingsRoute,
    required TResult Function() addThemeSettingsRoute,
    required TResult Function() popThemeSettingsRoute,
    required TResult Function() reset,
    required TResult Function(int index) resetWithSelectedIndex,
    required TResult Function() setError,
    required TResult Function() resetError,
  }) {
    return setError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? changeSelectedIndex,
    TResult? Function()? addUserSettingsRoute,
    TResult? Function()? popUserSettingsRoute,
    TResult? Function()? addThemeSettingsRoute,
    TResult? Function()? popThemeSettingsRoute,
    TResult? Function()? reset,
    TResult? Function(int index)? resetWithSelectedIndex,
    TResult? Function()? setError,
    TResult? Function()? resetError,
  }) {
    return setError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? changeSelectedIndex,
    TResult Function()? addUserSettingsRoute,
    TResult Function()? popUserSettingsRoute,
    TResult Function()? addThemeSettingsRoute,
    TResult Function()? popThemeSettingsRoute,
    TResult Function()? reset,
    TResult Function(int index)? resetWithSelectedIndex,
    TResult Function()? setError,
    TResult Function()? resetError,
    required TResult orElse(),
  }) {
    if (setError != null) {
      return setError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainRouterChangeSelectedIndex value)
        changeSelectedIndex,
    required TResult Function(MainRouterAddUserSettingsRoute value)
        addUserSettingsRoute,
    required TResult Function(MainRouterPopUserSettingsRoute value)
        popUserSettingsRoute,
    required TResult Function(MainRouterAddThemeSettingsRoute value)
        addThemeSettingsRoute,
    required TResult Function(MainRouterPopThemeSettingsRoute value)
        popThemeSettingsRoute,
    required TResult Function(MainRouterReset value) reset,
    required TResult Function(MainRouterResetWithSelectedIndex value)
        resetWithSelectedIndex,
    required TResult Function(MainRouterError value) setError,
    required TResult Function(MainRouterResetError value) resetError,
  }) {
    return setError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult? Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult? Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult? Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult? Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult? Function(MainRouterReset value)? reset,
    TResult? Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult? Function(MainRouterError value)? setError,
    TResult? Function(MainRouterResetError value)? resetError,
  }) {
    return setError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult Function(MainRouterReset value)? reset,
    TResult Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult Function(MainRouterError value)? setError,
    TResult Function(MainRouterResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (setError != null) {
      return setError(this);
    }
    return orElse();
  }
}

abstract class MainRouterError implements MainRouterEvent {
  const factory MainRouterError() = _$MainRouterError;
}

/// @nodoc
abstract class _$$MainRouterResetErrorCopyWith<$Res> {
  factory _$$MainRouterResetErrorCopyWith(_$MainRouterResetError value,
          $Res Function(_$MainRouterResetError) then) =
      __$$MainRouterResetErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainRouterResetErrorCopyWithImpl<$Res>
    extends _$MainRouterEventCopyWithImpl<$Res, _$MainRouterResetError>
    implements _$$MainRouterResetErrorCopyWith<$Res> {
  __$$MainRouterResetErrorCopyWithImpl(_$MainRouterResetError _value,
      $Res Function(_$MainRouterResetError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainRouterResetError implements MainRouterResetError {
  const _$MainRouterResetError();

  @override
  String toString() {
    return 'MainRouterEvent.resetError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainRouterResetError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) changeSelectedIndex,
    required TResult Function() addUserSettingsRoute,
    required TResult Function() popUserSettingsRoute,
    required TResult Function() addThemeSettingsRoute,
    required TResult Function() popThemeSettingsRoute,
    required TResult Function() reset,
    required TResult Function(int index) resetWithSelectedIndex,
    required TResult Function() setError,
    required TResult Function() resetError,
  }) {
    return resetError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? changeSelectedIndex,
    TResult? Function()? addUserSettingsRoute,
    TResult? Function()? popUserSettingsRoute,
    TResult? Function()? addThemeSettingsRoute,
    TResult? Function()? popThemeSettingsRoute,
    TResult? Function()? reset,
    TResult? Function(int index)? resetWithSelectedIndex,
    TResult? Function()? setError,
    TResult? Function()? resetError,
  }) {
    return resetError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? changeSelectedIndex,
    TResult Function()? addUserSettingsRoute,
    TResult Function()? popUserSettingsRoute,
    TResult Function()? addThemeSettingsRoute,
    TResult Function()? popThemeSettingsRoute,
    TResult Function()? reset,
    TResult Function(int index)? resetWithSelectedIndex,
    TResult Function()? setError,
    TResult Function()? resetError,
    required TResult orElse(),
  }) {
    if (resetError != null) {
      return resetError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainRouterChangeSelectedIndex value)
        changeSelectedIndex,
    required TResult Function(MainRouterAddUserSettingsRoute value)
        addUserSettingsRoute,
    required TResult Function(MainRouterPopUserSettingsRoute value)
        popUserSettingsRoute,
    required TResult Function(MainRouterAddThemeSettingsRoute value)
        addThemeSettingsRoute,
    required TResult Function(MainRouterPopThemeSettingsRoute value)
        popThemeSettingsRoute,
    required TResult Function(MainRouterReset value) reset,
    required TResult Function(MainRouterResetWithSelectedIndex value)
        resetWithSelectedIndex,
    required TResult Function(MainRouterError value) setError,
    required TResult Function(MainRouterResetError value) resetError,
  }) {
    return resetError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult? Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult? Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult? Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult? Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult? Function(MainRouterReset value)? reset,
    TResult? Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult? Function(MainRouterError value)? setError,
    TResult? Function(MainRouterResetError value)? resetError,
  }) {
    return resetError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainRouterChangeSelectedIndex value)? changeSelectedIndex,
    TResult Function(MainRouterAddUserSettingsRoute value)?
        addUserSettingsRoute,
    TResult Function(MainRouterPopUserSettingsRoute value)?
        popUserSettingsRoute,
    TResult Function(MainRouterAddThemeSettingsRoute value)?
        addThemeSettingsRoute,
    TResult Function(MainRouterPopThemeSettingsRoute value)?
        popThemeSettingsRoute,
    TResult Function(MainRouterReset value)? reset,
    TResult Function(MainRouterResetWithSelectedIndex value)?
        resetWithSelectedIndex,
    TResult Function(MainRouterError value)? setError,
    TResult Function(MainRouterResetError value)? resetError,
    required TResult orElse(),
  }) {
    if (resetError != null) {
      return resetError(this);
    }
    return orElse();
  }
}

abstract class MainRouterResetError implements MainRouterEvent {
  const factory MainRouterResetError() = _$MainRouterResetError;
}

/// @nodoc
mixin _$MainRouterState {
  int get selectedIndex => throw _privateConstructorUsedError;
  List<MainRoute> get routes => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainRouterStateCopyWith<MainRouterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainRouterStateCopyWith<$Res> {
  factory $MainRouterStateCopyWith(
          MainRouterState value, $Res Function(MainRouterState) then) =
      _$MainRouterStateCopyWithImpl<$Res, MainRouterState>;
  @useResult
  $Res call({int selectedIndex, List<MainRoute> routes, bool isError});
}

/// @nodoc
class _$MainRouterStateCopyWithImpl<$Res, $Val extends MainRouterState>
    implements $MainRouterStateCopyWith<$Res> {
  _$MainRouterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? routes = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      routes: null == routes
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<MainRoute>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainRouterStateCopyWith<$Res>
    implements $MainRouterStateCopyWith<$Res> {
  factory _$$_MainRouterStateCopyWith(
          _$_MainRouterState value, $Res Function(_$_MainRouterState) then) =
      __$$_MainRouterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, List<MainRoute> routes, bool isError});
}

/// @nodoc
class __$$_MainRouterStateCopyWithImpl<$Res>
    extends _$MainRouterStateCopyWithImpl<$Res, _$_MainRouterState>
    implements _$$_MainRouterStateCopyWith<$Res> {
  __$$_MainRouterStateCopyWithImpl(
      _$_MainRouterState _value, $Res Function(_$_MainRouterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? routes = null,
    Object? isError = null,
  }) {
    return _then(_$_MainRouterState(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      routes: null == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<MainRoute>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MainRouterState implements _MainRouterState {
  const _$_MainRouterState(
      {this.selectedIndex = 0,
      final List<MainRoute> routes = const [],
      this.isError = false})
      : _routes = routes;

  @override
  @JsonKey()
  final int selectedIndex;
  final List<MainRoute> _routes;
  @override
  @JsonKey()
  List<MainRoute> get routes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'MainRouterState(selectedIndex: $selectedIndex, routes: $routes, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainRouterState &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex,
      const DeepCollectionEquality().hash(_routes), isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainRouterStateCopyWith<_$_MainRouterState> get copyWith =>
      __$$_MainRouterStateCopyWithImpl<_$_MainRouterState>(this, _$identity);
}

abstract class _MainRouterState implements MainRouterState {
  const factory _MainRouterState(
      {final int selectedIndex,
      final List<MainRoute> routes,
      final bool isError}) = _$_MainRouterState;

  @override
  int get selectedIndex;
  @override
  List<MainRoute> get routes;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_MainRouterStateCopyWith<_$_MainRouterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainRoute {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userSettings,
    required TResult Function() themeSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userSettings,
    TResult? Function()? themeSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userSettings,
    TResult Function()? themeSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainUserSettingsRoute value) userSettings,
    required TResult Function(MainThemeSettingsRoute value) themeSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainUserSettingsRoute value)? userSettings,
    TResult? Function(MainThemeSettingsRoute value)? themeSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainUserSettingsRoute value)? userSettings,
    TResult Function(MainThemeSettingsRoute value)? themeSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainRouteCopyWith<$Res> {
  factory $MainRouteCopyWith(MainRoute value, $Res Function(MainRoute) then) =
      _$MainRouteCopyWithImpl<$Res, MainRoute>;
}

/// @nodoc
class _$MainRouteCopyWithImpl<$Res, $Val extends MainRoute>
    implements $MainRouteCopyWith<$Res> {
  _$MainRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainUserSettingsRouteCopyWith<$Res> {
  factory _$$MainUserSettingsRouteCopyWith(_$MainUserSettingsRoute value,
          $Res Function(_$MainUserSettingsRoute) then) =
      __$$MainUserSettingsRouteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainUserSettingsRouteCopyWithImpl<$Res>
    extends _$MainRouteCopyWithImpl<$Res, _$MainUserSettingsRoute>
    implements _$$MainUserSettingsRouteCopyWith<$Res> {
  __$$MainUserSettingsRouteCopyWithImpl(_$MainUserSettingsRoute _value,
      $Res Function(_$MainUserSettingsRoute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainUserSettingsRoute implements MainUserSettingsRoute {
  const _$MainUserSettingsRoute();

  @override
  String toString() {
    return 'MainRoute.userSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainUserSettingsRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userSettings,
    required TResult Function() themeSettings,
  }) {
    return userSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userSettings,
    TResult? Function()? themeSettings,
  }) {
    return userSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userSettings,
    TResult Function()? themeSettings,
    required TResult orElse(),
  }) {
    if (userSettings != null) {
      return userSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainUserSettingsRoute value) userSettings,
    required TResult Function(MainThemeSettingsRoute value) themeSettings,
  }) {
    return userSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainUserSettingsRoute value)? userSettings,
    TResult? Function(MainThemeSettingsRoute value)? themeSettings,
  }) {
    return userSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainUserSettingsRoute value)? userSettings,
    TResult Function(MainThemeSettingsRoute value)? themeSettings,
    required TResult orElse(),
  }) {
    if (userSettings != null) {
      return userSettings(this);
    }
    return orElse();
  }
}

abstract class MainUserSettingsRoute implements MainRoute {
  const factory MainUserSettingsRoute() = _$MainUserSettingsRoute;
}

/// @nodoc
abstract class _$$MainThemeSettingsRouteCopyWith<$Res> {
  factory _$$MainThemeSettingsRouteCopyWith(_$MainThemeSettingsRoute value,
          $Res Function(_$MainThemeSettingsRoute) then) =
      __$$MainThemeSettingsRouteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainThemeSettingsRouteCopyWithImpl<$Res>
    extends _$MainRouteCopyWithImpl<$Res, _$MainThemeSettingsRoute>
    implements _$$MainThemeSettingsRouteCopyWith<$Res> {
  __$$MainThemeSettingsRouteCopyWithImpl(_$MainThemeSettingsRoute _value,
      $Res Function(_$MainThemeSettingsRoute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainThemeSettingsRoute implements MainThemeSettingsRoute {
  const _$MainThemeSettingsRoute();

  @override
  String toString() {
    return 'MainRoute.themeSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainThemeSettingsRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userSettings,
    required TResult Function() themeSettings,
  }) {
    return themeSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userSettings,
    TResult? Function()? themeSettings,
  }) {
    return themeSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userSettings,
    TResult Function()? themeSettings,
    required TResult orElse(),
  }) {
    if (themeSettings != null) {
      return themeSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainUserSettingsRoute value) userSettings,
    required TResult Function(MainThemeSettingsRoute value) themeSettings,
  }) {
    return themeSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainUserSettingsRoute value)? userSettings,
    TResult? Function(MainThemeSettingsRoute value)? themeSettings,
  }) {
    return themeSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainUserSettingsRoute value)? userSettings,
    TResult Function(MainThemeSettingsRoute value)? themeSettings,
    required TResult orElse(),
  }) {
    if (themeSettings != null) {
      return themeSettings(this);
    }
    return orElse();
  }
}

abstract class MainThemeSettingsRoute implements MainRoute {
  const factory MainThemeSettingsRoute() = _$MainThemeSettingsRoute;
}
