import 'package:fitness_app/model/workout_class.dart';

class FindCategory {
  static String whichCategory(Categories categories) {
    var result = "";
    switch (categories) {
      case Categories.boxerWorkout:
        result = "Boxer Workout";
        break;
      case Categories.gym:
        result = "Gym";
        break;
      case Categories.homeWorkout:
        result = "Home Workout";
        break;
      case Categories.yoga:
        result = "Yoga";
        break;
    }
    return result;
  }
}
