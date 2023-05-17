import 'package:fitness_app/model/exercise.dart';

enum Categories {
  boxerWorkout,
  homeWorkout,
  gym,
  yoga,
}

class WorkoutClass {
  final Categories categories;
  final int totalWorkout;
  final String image;
  List<Exercise> exercises;

  WorkoutClass({
    required this.categories,
    required this.totalWorkout,
    required this.image,
    required this.exercises,
  });
}
