import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ml_kit_showcase_app/src/screens/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      centered: true,
      splash: 'assets/images/mlkit_showcaseapp_logo.png',
      nextScreen: const HomePage(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 3000,
      curve: Curves.easeIn,
      backgroundColor: const Color(0xff1C1B1F),
      splashIconSize: 220,
    );
  }
}
