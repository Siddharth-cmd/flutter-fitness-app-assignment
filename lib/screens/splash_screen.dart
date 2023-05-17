import 'package:fitness_app/constants/assets.dart';
import 'package:fitness_app/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String id = "/SplashScreen";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        AssetsPath.appIcon,
      ),
      title: const Text(
        "Fitness App",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 35.0,
        ),
      ),
      navigator: const OnBoardingScreen(),
      durationInSeconds: 10,
    );
  }
}
