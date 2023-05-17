import 'package:fitness_app/components/exercise_card.dart';
import 'package:fitness_app/data/dummy_data.dart';
import 'package:fitness_app/model/exercise.dart';
import 'package:fitness_app/model/workout_class.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class ExerciseClassListScreen extends StatefulWidget {
  static const String id = "/ClasslistScreen";

  const ExerciseClassListScreen({Key? key}) : super(key: key);

  @override
  State<ExerciseClassListScreen> createState() =>
      _ExerciseClassListScreenState();
}

class _ExerciseClassListScreenState extends State<ExerciseClassListScreen> {
  List<Exercise> workoutClassExercise = [];

  @override
  Widget build(BuildContext context) {
    WorkoutClass workoutClass =
        ModalRoute.of(context)!.settings.arguments as WorkoutClass;
    workoutClassExercise = dummyExercises
        .where((element) => element.category == workoutClass.categories)
        .toList();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Swiper(
        itemCount: workoutClassExercise.length,
        itemBuilder: (context, index) {
          return ExerciseCard(
            exercise: workoutClassExercise[index],
          );
        },
        itemWidth: MediaQuery.of(context).size.width * 0.8,
        itemHeight: MediaQuery.of(context).size.height,
        layout: SwiperLayout.TINDER,
      ),
    );
  }
}
