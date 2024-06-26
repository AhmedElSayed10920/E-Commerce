import 'package:ecommerce/core/resources/routes.dart';
import 'package:ecommerce/core/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp._internal();
  static const ECommerceApp _instance = ECommerceApp._internal();
  factory ECommerceApp() => _instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getAppThemeData(),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splash,
      debugShowCheckedModeBanner: false,
    );
  }
}
