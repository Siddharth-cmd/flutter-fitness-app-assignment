import 'package:fitness_app/model/workout_class.dart';

class Exercise {
  final String name;
  final String description;
  final int sets;
  final int reps;
  final Duration restTime;
  final String equipment;
  final String image;
  final Categories category;

  Exercise({
    required this.name,
    required this.description,
    required this.sets,
    required this.reps,
    required this.restTime,
    required this.equipment,
    required this.image,
    required this.category,
  });
}
