import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  bool get isNotAuthorized => state is NotAuthorized;

  AuthBloc() : super(const AuthState.unknown()) {
    on<SetNotAuthorized>(_notAuthorized);
    on<SetAuth>(_auth);
    on<SetAuthAnonymous>(_authAuthorized);
    on<SetLogout>(_logout);
  }

  void _auth(SetAuth event, Emitter<AuthState> emit) =>
      emit(const AuthState.auth());

  void _authAuthorized(SetAuthAnonymous event, Emitter<AuthState> emit) =>
      emit(const AuthState.authAnonymous());

  void _logout(SetLogout event, Emitter<AuthState> emit) =>
      emit(const AuthState.notAuthorized());

  void _notAuthorized(SetNotAuthorized event, Emitter<AuthState> emit) {
    emit(const AuthState.notAuthorized());
  }
}
