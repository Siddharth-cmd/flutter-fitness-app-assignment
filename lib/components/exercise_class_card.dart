import 'package:fitness_app/model/workout_class.dart';
import 'package:fitness_app/screens/screens.dart';
import 'package:flutter/material.dart';
import "package:fitness_app/logic/find_category.dart";

class ExerciseClassCard extends StatelessWidget {
  final WorkoutClass workoutclass;
  const ExerciseClassCard({
    Key? key,
    required this.workoutclass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          ExerciseClassListScreen.id,
          arguments: workoutclass,
        );
      },
      child: Container(
        margin: const EdgeInsets.all(20.0),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            22.0,
          ),
          color: const Color(0xFF1a1c1e),
        ),
        child: WorkoutClassCard(workoutclass: workoutclass),
      ),
    );
  }
}

class WorkoutClassCard extends StatelessWidget {
  const WorkoutClassCard({
    Key? key,
    required this.workoutclass,
  }) : super(key: key);

  final WorkoutClass workoutclass;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            margin: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                workoutclass.image,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: Text(
                  FindCategory.whichCategory(workoutclass.categories),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              // Add additional content here
            ],
          ),
        ),
      ],
    );
  }
}
