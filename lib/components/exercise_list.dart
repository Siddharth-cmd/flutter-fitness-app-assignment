import 'package:fitness_app/data/workout_class_list.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/components/exercise_class_card.dart';

class ExerciseList extends StatelessWidget {
  const ExerciseList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExerciseClassCard(
          workoutclass: workoutclassList[index],
        );
      },
      itemCount: workoutclassList.length,
    );
  }
}
