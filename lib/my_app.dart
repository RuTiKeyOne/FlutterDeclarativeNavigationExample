import 'package:flutter/material.dart';
import 'package:flutter_declarative_navigation_example/app/router/app_router/app_router.dart';
import 'package:flutter_declarative_navigation_example/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routerDelegate: AppRouter.routerDelegate,
      routeInformationParser: AppRouter.routerInformationParser,
    );
  }
}
