part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unknown() = Unknown;
  const factory AuthState.notAuthorized() = NotAuthorized;
  const factory AuthState.auth() = Auth;
  const factory AuthState.authAnonymous() = AuthAnonymous;
}
