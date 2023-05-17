import 'package:flutter/material.dart';
import 'package:fitness_app/screens/screens.dart';

class NavigationManager extends StatefulWidget {
  static const String id = "/NavigationManager";
  const NavigationManager({super.key});

  @override
  State<NavigationManager> createState() => _NavigationManagerState();
}

class _NavigationManagerState extends State<NavigationManager> {
  List<Widget> screens = [
    const HomeScreen(),
    const AddExerciseScreen(),
  ];
  int index = 0;

  void updateScreen(int currentIndex) {
    setState(() {
      index = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: "Favorites",
          ),
        ],
        currentIndex: index,
        onTap: updateScreen,
      ),
    );
  }
}
