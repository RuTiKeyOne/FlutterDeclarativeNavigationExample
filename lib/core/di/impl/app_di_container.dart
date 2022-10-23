import 'package:flutter_declarative_navigation_example/app/BLoC/auth/auth_bloc.dart';
import 'package:flutter_declarative_navigation_example/core/di/di_container.dart';

DIContainer makeDiContainer() => _AppDIContainer();

class _AppDIContainer implements DIContainer {
  @override
  AuthBloc makeAuthBloc() => AuthBloc();
}
