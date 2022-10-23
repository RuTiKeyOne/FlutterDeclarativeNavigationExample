import 'package:flutter/material.dart';
import 'package:flutter_declarative_navigation_example/core/di/impl/app_di_container.dart';
import 'package:flutter_declarative_navigation_example/core/di/service_locator/locator.dart';
import 'package:flutter_declarative_navigation_example/my_app.dart';

final diContainer = makeDiContainer();

void main() async {
  await setup(diContainer);
  runApp(const MyApp());
}
