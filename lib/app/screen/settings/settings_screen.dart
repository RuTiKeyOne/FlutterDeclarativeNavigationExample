import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/router/main_router_bloc/main_router_bloc.dart';
import 'package:flutter_declarative_navigation_example/generated/l10n.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => context
                    .read<MainRouterBloc>()
                    .add(const MainRouterEvent.addUserSettingsRoute()),
                child: Text(S.of(context).user_settings),
              ),
              ElevatedButton(
                  onPressed: () => context
                      .read<MainRouterBloc>()
                      .add(const MainRouterEvent.addThemeSettingsRoute()),
                  child: Text(S.of(context).theme_settings)),
            ],
          ),
        ),
      ),
    );
  }
}
