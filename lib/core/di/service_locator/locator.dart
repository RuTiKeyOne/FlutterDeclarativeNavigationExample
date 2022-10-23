import 'package:flutter_declarative_navigation_example/app/BLoC/auth/auth_bloc.dart';
import 'package:flutter_declarative_navigation_example/core/di/di_container.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> setup(DIContainer diContainer) async {
  locator.registerSingleton<AuthBloc>(diContainer.makeAuthBloc());
}
