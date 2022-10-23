import 'package:flutter/material.dart';
import 'package:flutter_declarative_navigation_example/app/BLoC/auth/auth_bloc.dart';
import 'package:flutter_declarative_navigation_example/core/di/service_locator/locator.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authBloc = locator.get<AuthBloc>();

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  TextFormField(),
                  TextFormField(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () =>
                                authBloc.add(const AuthEvent.setAuth()),
                            child: const Text("Авторизоваться")),
                        ElevatedButton(
                            onPressed: () => authBloc
                                .add(const AuthEvent.setAuthAnonymous()),
                            child: const Text("Пропустить")),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
