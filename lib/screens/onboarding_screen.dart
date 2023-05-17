import 'package:fitness_app/components/onboarding_title.dart';
import 'package:fitness_app/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/components/getting_started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String id = "/OnBoardingScreen";

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 40.0,
              right: 40.0,
            ),
            child: Image.asset(
              AssetsPath.onboardingIcon,
              height: 400, // Adjust the height as needed
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 20.0,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: const [
                        OnboardingTitle(),
                        SizedBox(height: 30.0),
                        GettingStartedButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
