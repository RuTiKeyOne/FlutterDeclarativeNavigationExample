part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.setNotAuthorized() = SetNotAuthorized;
  const factory AuthEvent.setAuth() = SetAuth;
  const factory AuthEvent.setAuthAnonymous() = SetAuthAnonymous;
  const factory AuthEvent.setLogout() = SetLogout;
}
