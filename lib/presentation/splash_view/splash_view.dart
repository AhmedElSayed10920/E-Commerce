import 'dart:async';
import 'package:ecommerce/core/resources/assets_manager.dart';
import 'package:ecommerce/core/resources/colors_manager.dart';
import 'package:ecommerce/core/resources/constants.dart';
import 'package:ecommerce/core/resources/routes.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoarding);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsManager.primary,
      body: Center(
        child: Image(image: AssetImage(ImageAssets.logo)),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
