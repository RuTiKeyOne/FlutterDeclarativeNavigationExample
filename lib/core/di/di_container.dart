import 'package:flutter_declarative_navigation_example/app/BLoC/auth/auth_bloc.dart';

abstract class DIContainer {
  AuthBloc makeAuthBloc();
}
