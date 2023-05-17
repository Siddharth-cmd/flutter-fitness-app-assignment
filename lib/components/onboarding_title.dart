import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Welcome to",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        Text(
          "Our Workout Club",
          style: GoogleFonts.alkalami(
            fontSize: 30.0,
          ),
        ),
        const Text(
          "Plan your workout instantly from the app",
          style: TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
