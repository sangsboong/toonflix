import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen_pomodoros.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currentcy_card.dart';

void main() {
  runApp(const App());
}
// Pomodoros App (Stop watch)

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}
