// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setNotAuthorized,
    required TResult Function() setAuth,
    required TResult Function() setAuthAnonymous,
    required TResult Function() setLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setNotAuthorized,
    TResult? Function()? setAuth,
    TResult? Function()? setAuthAnonymous,
    TResult? Function()? setLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setNotAuthorized,
    TResult Function()? setAuth,
    TResult Function()? setAuthAnonymous,
    TResult Function()? setLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetNotAuthorized value) setNotAuthorized,
    required TResult Function(SetAuth value) setAuth,
    required TResult Function(SetAuthAnonymous value) setAuthAnonymous,
    required TResult Function(SetLogout value) setLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetNotAuthorized value)? setNotAuthorized,
    TResult? Function(SetAuth value)? setAuth,
    TResult? Function(SetAuthAnonymous value)? setAuthAnonymous,
    TResult? Function(SetLogout value)? setLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetNotAuthorized value)? setNotAuthorized,
    TResult Function(SetAuth value)? setAuth,
    TResult Function(SetAuthAnonymous value)? setAuthAnonymous,
    TResult Function(SetLogout value)? setLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetNotAuthorizedCopyWith<$Res> {
  factory _$$SetNotAuthorizedCopyWith(
          _$SetNotAuthorized value, $Res Function(_$SetNotAuthorized) then) =
      __$$SetNotAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetNotAuthorizedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetNotAuthorized>
    implements _$$SetNotAuthorizedCopyWith<$Res> {
  __$$SetNotAuthorizedCopyWithImpl(
      _$SetNotAuthorized _value, $Res Function(_$SetNotAuthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetNotAuthorized implements SetNotAuthorized {
  const _$SetNotAuthorized();

  @override
  String toString() {
    return 'AuthEvent.setNotAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetNotAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setNotAuthorized,
    required TResult Function() setAuth,
    required TResult Function() setAuthAnonymous,
    required TResult Function() setLogout,
  }) {
    return setNotAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setNotAuthorized,
    TResult? Function()? setAuth,
    TResult? Function()? setAuthAnonymous,
    TResult? Function()? setLogout,
  }) {
    return setNotAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setNotAuthorized,
    TResult Function()? setAuth,
    TResult Function()? setAuthAnonymous,
    TResult Function()? setLogout,
    required TResult orElse(),
  }) {
    if (setNotAuthorized != null) {
      return setNotAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetNotAuthorized value) setNotAuthorized,
    required TResult Function(SetAuth value) setAuth,
    required TResult Function(SetAuthAnonymous value) setAuthAnonymous,
    required TResult Function(SetLogout value) setLogout,
  }) {
    return setNotAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetNotAuthorized value)? setNotAuthorized,
    TResult? Function(SetAuth value)? setAuth,
    TResult? Function(SetAuthAnonymous value)? setAuthAnonymous,
    TResult? Function(SetLogout value)? setLogout,
  }) {
    return setNotAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetNotAuthorized value)? setNotAuthorized,
    TResult Function(SetAuth value)? setAuth,
    TResult Function(SetAuthAnonymous value)? setAuthAnonymous,
    TResult Function(SetLogout value)? setLogout,
    required TResult orElse(),
  }) {
    if (setNotAuthorized != null) {
      return setNotAuthorized(this);
    }
    return orElse();
  }
}

abstract class SetNotAuthorized implements AuthEvent {
  const factory SetNotAuthorized() = _$SetNotAuthorized;
}

/// @nodoc
abstract class _$$SetAuthCopyWith<$Res> {
  factory _$$SetAuthCopyWith(_$SetAuth value, $Res Function(_$SetAuth) then) =
      __$$SetAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetAuthCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetAuth>
    implements _$$SetAuthCopyWith<$Res> {
  __$$SetAuthCopyWithImpl(_$SetAuth _value, $Res Function(_$SetAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetAuth implements SetAuth {
  const _$SetAuth();

  @override
  String toString() {
    return 'AuthEvent.setAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setNotAuthorized,
    required TResult Function() setAuth,
    required TResult Function() setAuthAnonymous,
    required TResult Function() setLogout,
  }) {
    return setAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setNotAuthorized,
    TResult? Function()? setAuth,
    TResult? Function()? setAuthAnonymous,
    TResult? Function()? setLogout,
  }) {
    return setAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setNotAuthorized,
    TResult Function()? setAuth,
    TResult Function()? setAuthAnonymous,
    TResult Function()? setLogout,
    required TResult orElse(),
  }) {
    if (setAuth != null) {
      return setAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetNotAuthorized value) setNotAuthorized,
    required TResult Function(SetAuth value) setAuth,
    required TResult Function(SetAuthAnonymous value) setAuthAnonymous,
    required TResult Function(SetLogout value) setLogout,
  }) {
    return setAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetNotAuthorized value)? setNotAuthorized,
    TResult? Function(SetAuth value)? setAuth,
    TResult? Function(SetAuthAnonymous value)? setAuthAnonymous,
    TResult? Function(SetLogout value)? setLogout,
  }) {
    return setAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetNotAuthorized value)? setNotAuthorized,
    TResult Function(SetAuth value)? setAuth,
    TResult Function(SetAuthAnonymous value)? setAuthAnonymous,
    TResult Function(SetLogout value)? setLogout,
    required TResult orElse(),
  }) {
    if (setAuth != null) {
      return setAuth(this);
    }
    return orElse();
  }
}

abstract class SetAuth implements AuthEvent {
  const factory SetAuth() = _$SetAuth;
}

/// @nodoc
abstract class _$$SetAuthAnonymousCopyWith<$Res> {
  factory _$$SetAuthAnonymousCopyWith(
          _$SetAuthAnonymous value, $Res Function(_$SetAuthAnonymous) then) =
      __$$SetAuthAnonymousCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetAuthAnonymousCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetAuthAnonymous>
    implements _$$SetAuthAnonymousCopyWith<$Res> {
  __$$SetAuthAnonymousCopyWithImpl(
      _$SetAuthAnonymous _value, $Res Function(_$SetAuthAnonymous) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetAuthAnonymous implements SetAuthAnonymous {
  const _$SetAuthAnonymous();

  @override
  String toString() {
    return 'AuthEvent.setAuthAnonymous()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetAuthAnonymous);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setNotAuthorized,
    required TResult Function() setAuth,
    required TResult Function() setAuthAnonymous,
    required TResult Function() setLogout,
  }) {
    return setAuthAnonymous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setNotAuthorized,
    TResult? Function()? setAuth,
    TResult? Function()? setAuthAnonymous,
    TResult? Function()? setLogout,
  }) {
    return setAuthAnonymous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setNotAuthorized,
    TResult Function()? setAuth,
    TResult Function()? setAuthAnonymous,
    TResult Function()? setLogout,
    required TResult orElse(),
  }) {
    if (setAuthAnonymous != null) {
      return setAuthAnonymous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetNotAuthorized value) setNotAuthorized,
    required TResult Function(SetAuth value) setAuth,
    required TResult Function(SetAuthAnonymous value) setAuthAnonymous,
    required TResult Function(SetLogout value) setLogout,
  }) {
    return setAuthAnonymous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetNotAuthorized value)? setNotAuthorized,
    TResult? Function(SetAuth value)? setAuth,
    TResult? Function(SetAuthAnonymous value)? setAuthAnonymous,
    TResult? Function(SetLogout value)? setLogout,
  }) {
    return setAuthAnonymous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetNotAuthorized value)? setNotAuthorized,
    TResult Function(SetAuth value)? setAuth,
    TResult Function(SetAuthAnonymous value)? setAuthAnonymous,
    TResult Function(SetLogout value)? setLogout,
    required TResult orElse(),
  }) {
    if (setAuthAnonymous != null) {
      return setAuthAnonymous(this);
    }
    return orElse();
  }
}

abstract class SetAuthAnonymous implements AuthEvent {
  const factory SetAuthAnonymous() = _$SetAuthAnonymous;
}

/// @nodoc
abstract class _$$SetLogoutCopyWith<$Res> {
  factory _$$SetLogoutCopyWith(
          _$SetLogout value, $Res Function(_$SetLogout) then) =
      __$$SetLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetLogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetLogout>
    implements _$$SetLogoutCopyWith<$Res> {
  __$$SetLogoutCopyWithImpl(
      _$SetLogout _value, $Res Function(_$SetLogout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetLogout implements SetLogout {
  const _$SetLogout();

  @override
  String toString() {
    return 'AuthEvent.setLogout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setNotAuthorized,
    required TResult Function() setAuth,
    required TResult Function() setAuthAnonymous,
    required TResult Function() setLogout,
  }) {
    return setLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setNotAuthorized,
    TResult? Function()? setAuth,
    TResult? Function()? setAuthAnonymous,
    TResult? Function()? setLogout,
  }) {
    return setLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setNotAuthorized,
    TResult Function()? setAuth,
    TResult Function()? setAuthAnonymous,
    TResult Function()? setLogout,
    required TResult orElse(),
  }) {
    if (setLogout != null) {
      return setLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetNotAuthorized value) setNotAuthorized,
    required TResult Function(SetAuth value) setAuth,
    required TResult Function(SetAuthAnonymous value) setAuthAnonymous,
    required TResult Function(SetLogout value) setLogout,
  }) {
    return setLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetNotAuthorized value)? setNotAuthorized,
    TResult? Function(SetAuth value)? setAuth,
    TResult? Function(SetAuthAnonymous value)? setAuthAnonymous,
    TResult? Function(SetLogout value)? setLogout,
  }) {
    return setLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetNotAuthorized value)? setNotAuthorized,
    TResult Function(SetAuth value)? setAuth,
    TResult Function(SetAuthAnonymous value)? setAuthAnonymous,
    TResult Function(SetLogout value)? setLogout,
    required TResult orElse(),
  }) {
    if (setLogout != null) {
      return setLogout(this);
    }
    return orElse();
  }
}

abstract class SetLogout implements AuthEvent {
  const factory SetLogout() = _$SetLogout;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notAuthorized,
    required TResult Function() auth,
    required TResult Function() authAnonymous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? notAuthorized,
    TResult? Function()? auth,
    TResult? Function()? authAnonymous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notAuthorized,
    TResult Function()? auth,
    TResult Function()? authAnonymous,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(NotAuthorized value) notAuthorized,
    required TResult Function(Auth value) auth,
    required TResult Function(AuthAnonymous value) authAnonymous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(NotAuthorized value)? notAuthorized,
    TResult? Function(Auth value)? auth,
    TResult? Function(AuthAnonymous value)? authAnonymous,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(NotAuthorized value)? notAuthorized,
    TResult Function(Auth value)? auth,
    TResult Function(AuthAnonymous value)? authAnonymous,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknownCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Unknown>
    implements _$$UnknownCopyWith<$Res> {
  __$$UnknownCopyWithImpl(_$Unknown _value, $Res Function(_$Unknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown();

  @override
  String toString() {
    return 'AuthState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notAuthorized,
    required TResult Function() auth,
    required TResult Function() authAnonymous,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? notAuthorized,
    TResult? Function()? auth,
    TResult? Function()? authAnonymous,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notAuthorized,
    TResult Function()? auth,
    TResult Function()? authAnonymous,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(NotAuthorized value) notAuthorized,
    required TResult Function(Auth value) auth,
    required TResult Function(AuthAnonymous value) authAnonymous,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(NotAuthorized value)? notAuthorized,
    TResult? Function(Auth value)? auth,
    TResult? Function(AuthAnonymous value)? authAnonymous,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(NotAuthorized value)? notAuthorized,
    TResult Function(Auth value)? auth,
    TResult Function(AuthAnonymous value)? authAnonymous,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements AuthState {
  const factory Unknown() = _$Unknown;
}

/// @nodoc
abstract class _$$NotAuthorizedCopyWith<$Res> {
  factory _$$NotAuthorizedCopyWith(
          _$NotAuthorized value, $Res Function(_$NotAuthorized) then) =
      __$$NotAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NotAuthorized>
    implements _$$NotAuthorizedCopyWith<$Res> {
  __$$NotAuthorizedCopyWithImpl(
      _$NotAuthorized _value, $Res Function(_$NotAuthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotAuthorized implements NotAuthorized {
  const _$NotAuthorized();

  @override
  String toString() {
    return 'AuthState.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notAuthorized,
    required TResult Function() auth,
    required TResult Function() authAnonymous,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? notAuthorized,
    TResult? Function()? auth,
    TResult? Function()? authAnonymous,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notAuthorized,
    TResult Function()? auth,
    TResult Function()? authAnonymous,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(NotAuthorized value) notAuthorized,
    required TResult Function(Auth value) auth,
    required TResult Function(AuthAnonymous value) authAnonymous,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(NotAuthorized value)? notAuthorized,
    TResult? Function(Auth value)? auth,
    TResult? Function(AuthAnonymous value)? authAnonymous,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(NotAuthorized value)? notAuthorized,
    TResult Function(Auth value)? auth,
    TResult Function(AuthAnonymous value)? authAnonymous,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class NotAuthorized implements AuthState {
  const factory NotAuthorized() = _$NotAuthorized;
}

/// @nodoc
abstract class _$$AuthCopyWith<$Res> {
  factory _$$AuthCopyWith(_$Auth value, $Res Function(_$Auth) then) =
      __$$AuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res, _$Auth>
    implements _$$AuthCopyWith<$Res> {
  __$$AuthCopyWithImpl(_$Auth _value, $Res Function(_$Auth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Auth implements Auth {
  const _$Auth();

  @override
  String toString() {
    return 'AuthState.auth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Auth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notAuthorized,
    required TResult Function() auth,
    required TResult Function() authAnonymous,
  }) {
    return auth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? notAuthorized,
    TResult? Function()? auth,
    TResult? Function()? authAnonymous,
  }) {
    return auth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notAuthorized,
    TResult Function()? auth,
    TResult Function()? authAnonymous,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(NotAuthorized value) notAuthorized,
    required TResult Function(Auth value) auth,
    required TResult Function(AuthAnonymous value) authAnonymous,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(NotAuthorized value)? notAuthorized,
    TResult? Function(Auth value)? auth,
    TResult? Function(AuthAnonymous value)? authAnonymous,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(NotAuthorized value)? notAuthorized,
    TResult Function(Auth value)? auth,
    TResult Function(AuthAnonymous value)? authAnonymous,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class Auth implements AuthState {
  const factory Auth() = _$Auth;
}

/// @nodoc
abstract class _$$AuthAnonymousCopyWith<$Res> {
  factory _$$AuthAnonymousCopyWith(
          _$AuthAnonymous value, $Res Function(_$AuthAnonymous) then) =
      __$$AuthAnonymousCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthAnonymousCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthAnonymous>
    implements _$$AuthAnonymousCopyWith<$Res> {
  __$$AuthAnonymousCopyWithImpl(
      _$AuthAnonymous _value, $Res Function(_$AuthAnonymous) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthAnonymous implements AuthAnonymous {
  const _$AuthAnonymous();

  @override
  String toString() {
    return 'AuthState.authAnonymous()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthAnonymous);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notAuthorized,
    required TResult Function() auth,
    required TResult Function() authAnonymous,
  }) {
    return authAnonymous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? notAuthorized,
    TResult? Function()? auth,
    TResult? Function()? authAnonymous,
  }) {
    return authAnonymous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notAuthorized,
    TResult Function()? auth,
    TResult Function()? authAnonymous,
    required TResult orElse(),
  }) {
    if (authAnonymous != null) {
      return authAnonymous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(NotAuthorized value) notAuthorized,
    required TResult Function(Auth value) auth,
    required TResult Function(AuthAnonymous value) authAnonymous,
  }) {
    return authAnonymous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(NotAuthorized value)? notAuthorized,
    TResult? Function(Auth value)? auth,
    TResult? Function(AuthAnonymous value)? authAnonymous,
  }) {
    return authAnonymous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(NotAuthorized value)? notAuthorized,
    TResult Function(Auth value)? auth,
    TResult Function(AuthAnonymous value)? authAnonymous,
    required TResult orElse(),
  }) {
    if (authAnonymous != null) {
      return authAnonymous(this);
    }
    return orElse();
  }
}

abstract class AuthAnonymous implements AuthState {
  const factory AuthAnonymous() = _$AuthAnonymous;
}
