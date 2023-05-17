import 'package:fitness_app/screens/screens.dart';
import 'package:fitness_app/settings/navigation_manager.dart';

class MyRoutes {
  static var routes = {
    SplashScreen.id: (context) => const SplashScreen(),
    OnBoardingScreen.id: (context) => const OnBoardingScreen(),
    HomeScreen.id: (context) => const HomeScreen(),
    NavigationManager.id: (context) => const NavigationManager(),
    ExerciseClassListScreen.id: (context) => const ExerciseClassListScreen(),
  };
}
