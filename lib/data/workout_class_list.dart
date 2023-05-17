import 'package:fitness_app/constants/assets.dart';
import 'package:fitness_app/model/workout_class.dart';

List<WorkoutClass> workoutclassList = [
  WorkoutClass(
    categories: Categories.homeWorkout,
    totalWorkout: 12,
    image: AssetsPath.homeworkout,
    exercises: [],
  ),
  WorkoutClass(
    categories: Categories.boxerWorkout,
    totalWorkout: 12,
    image: AssetsPath.boxer,
    exercises: [],
  ),
  WorkoutClass(
    categories: Categories.gym,
    totalWorkout: 12,
    image: AssetsPath.gym,
    exercises: [],
  ),
  WorkoutClass(
    categories: Categories.yoga,
    totalWorkout: 12,
    image: AssetsPath.yoga,
    exercises: [],
  ),
];
