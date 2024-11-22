import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:kilo_health/model/model_OnBoading.dart';
import 'package:kilo_health/Screen/onBoarding_Sreen/onBoarding_Sreen.dart';

class SplasSreen extends StatelessWidget {
  const SplasSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 400,
      splashTransition: SplashTransition.scaleTransition,
      splash: Image.asset(
        height: 300,
        width: 300,
        "lib/image/LogoKilohealth.jpg",
        // fit: BoxFit.fitHeight,
      ),
      nextScreen: OnboardingScreen(model: model), //
    );
  }
}
