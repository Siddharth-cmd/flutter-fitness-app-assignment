import 'package:fitness_app/settings/navigation_manager.dart';
import 'package:fitness_app/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GettingStartedButton extends StatelessWidget {
  const GettingStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 40.0,
        right: 40.0,
      ),
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            NavigationManager.id,
          );
        },
        icon: const Icon(
          Icons.bolt,
          color: Colors.black,
        ),
        label: Text(
          "Getting Started",
          style: GoogleFonts.acme(
            color: Colors.black,
            fontSize: 19.0,
          ),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(
            double.infinity,
            60.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
          backgroundColor: Palette.buttonColor,
        ),
      ),
    );
  }
}
