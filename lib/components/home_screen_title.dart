import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenTitle extends StatelessWidget {
  const HomeScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 50.0,
      ),
      child: Column(
        children: [
          Text(
            "Find your",
            style: GoogleFonts.acme(
              fontSize: 35.0,
              color: Colors.grey,
            ),
          ),
          Text(
            "Workout class",
            style: GoogleFonts.acme(
              fontSize: 45.0,
            ),
          ),
        ],
      ),
    );
  }
}
