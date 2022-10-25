import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_declarative_navigation_example/app/router/main_router/router_delegate.dart';
import 'package:flutter_declarative_navigation_example/app/router/main_router/router_information_parser.dart';
import 'package:flutter_declarative_navigation_example/app/router/main_router_bloc/main_router_bloc.dart';
import 'package:flutter_declarative_navigation_example/generated/l10n.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final MainRouterDelegate mainRouterDelegate;
  late final MainRouterInformationParser mainRouterInformationParser;

  @override
  void initState() {
    super.initState();
    mainRouterDelegate =
        MainRouterDelegate(mainRouterBloc: context.read<MainRouterBloc>());
    mainRouterInformationParser = MainRouterInformationParser();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Router(
          routerDelegate: mainRouterDelegate,
          routeInformationParser: mainRouterInformationParser,
        ),
        bottomNavigationBar: BlocBuilder<MainRouterBloc, MainRouterState>(
          builder: (context, state) {
            return BottomNavigationBar(
              onTap: (index) => context.read<MainRouterBloc>().add(
                  MainRouterEvent.changeSelectedIndex(selectedIndex: index)),
              currentIndex: state.selectedIndex,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                    icon: const Icon(Icons.book), label: S.of(context).books),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.settings),
                    label: S.of(context).settings)
              ],
            );
          },
        ),
      ),
    );
  }
}
