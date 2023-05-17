import 'package:flutter/material.dart';

import '../model/exercise.dart';

class FavExerciseProvider implements ChangeNotifier {
  List<Exercise> exerciseList = [];

  void addExercise(Exercise exercise) {
    exerciseList.add(exercise);
    notifyListeners();
  }

  void removeExercise(Exercise exercise) {
    exerciseList.removeWhere(
      (e) => e.name == exercise.name,
    );
    notifyListeners();
  }

  @override
  void addListener(VoidCallback listener) {
    // TODO: implement addListener
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  // TODO: implement hasListeners
  bool get hasListeners => throw UnimplementedError();

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
  }

  @override
  void removeListener(VoidCallback listener) {
    // TODO: implement removeListener
  }
}
