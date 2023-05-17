import 'package:fitness_app/components/exercise_list.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/components/home_screen_title.dart';

class HomeScreen extends StatelessWidget {
  static const String id = "/HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          HomeScreenTitle(),
          Expanded(
            child: ExerciseList(),
          ),
        ],
      ),
    );
  }
}
