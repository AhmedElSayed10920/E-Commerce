import 'package:ecommerce/presentation/on_boardind_views/on_boarding_view.dart';
import 'package:ecommerce/presentation/splash_view/splash_view.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static const String splash = '/';
  static const String onBoarding = '/onBoarding';
}

abstract class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      default:
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
  }
}
