import 'package:fitness_app/provider/fav_exercise.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/exercise.dart';
import 'package:fitness_app/components/fav_card.dart';

class AddExerciseScreen extends StatefulWidget {
  const AddExerciseScreen({super.key});

  @override
  State<AddExerciseScreen> createState() => _AddExerciseScreenState();
}

class _AddExerciseScreenState extends State<AddExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    final favExerciseState = Provider.of<FavExerciseProvider>(context);
    List<Exercise> favExerciseList = favExerciseState.exerciseList;
    return Scaffold(
      body: favExerciseList.isEmpty
          ? const Center(
              child: Text("No exercise added"),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return FavCard(
                  exercise: favExerciseList[index],
                );
              },
              itemCount: favExerciseList.length,
            ),
    );
  }
}
