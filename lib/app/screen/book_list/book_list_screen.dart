import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/BLoC/auth/auth_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/router/app_router_bloc/app_router_bloc.dart';
import 'package:flutter_declarative_navigation_example/core/di/service_locator/locator.dart';

class BookListScreen extends StatelessWidget {
  const BookListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => context
                  .read<AppRouterBloc>()
                  .add(const AppRouterEvent.addBasket()),
              icon: const Icon(Icons.shopping_bag_outlined)),
          actions: [
            IconButton(
                onPressed: () =>
                    locator.get<AuthBloc>().add(const AuthEvent.setLogout()),
                icon: const Icon(Icons.exit_to_app)),
          ],
        ),
        body: const Center(
          child: Text("Book List Screen"),
        ),
      ),
    );
  }
}
