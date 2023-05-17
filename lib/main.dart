import 'package:fitness_app/provider/fav_exercise.dart';
import 'package:fitness_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavExerciseProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialRoute: SplashScreen.id,
        routes: MyRoutes.routes,
      ),
    );
  }
}
