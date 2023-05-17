import 'package:fitness_app/model/exercise.dart';
import 'package:fitness_app/provider/fav_exercise.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favExerciseState = Provider.of<FavExerciseProvider>(context);
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF151718),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  exercise.image,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 16.0,
                  right: 16.0,
                  child: IconButton(
                    onPressed: () {
                      if (favExerciseState.exerciseList.contains(exercise)) {
                        favExerciseState.removeExercise(exercise);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Exercise removed from favorites"),
                          ),
                        );
                      } else {
                        favExerciseState.addExercise(exercise);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(
                              seconds: 2,
                            ),
                            content: Text("Exercise added to favorites"),
                          ),
                        );
                      }
                    },
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16.0),
                  Text(
                    exercise.name,
                    style: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    exercise.description,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      const Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        '${exercise.restTime.inSeconds} min',
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      const Icon(
                        Icons.whatshot,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        '${exercise.sets}',
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    'Sets: ${exercise.sets}',
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Equipment: ${exercise.equipment}',
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
