import 'package:fitness_app/model/exercise.dart';
import 'package:flutter/material.dart';

class FavCard extends StatelessWidget {
  final Exercise exercise;

  const FavCard({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        20.0,
      ),
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12.0)),
                image: DecorationImage(
                  image: AssetImage(exercise.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exercise.name,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    exercise.description,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      const Icon(
                        Icons.timer,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text('${exercise.restTime.inSeconds} min'),
                      const SizedBox(
                        width: 16.0,
                      ),
                      const Icon(Icons.whatshot),
                      const SizedBox(width: 4.0),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text('Sets: ${exercise.sets}'),
                  const SizedBox(height: 8.0),
                  Text('Reps: ${exercise.reps}'),
                  const SizedBox(height: 8.0),
                  Text('Rest Time: ${exercise.restTime.inSeconds} sec'),
                  const SizedBox(height: 8.0),
                  Text('Equipment: ${exercise.equipment}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
