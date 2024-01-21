import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currentcy_card.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  List<int> numbers = [];

  void onClicked() {
    // state 상태 변경을 state class에 알려주는 기능
    // every time that you call the setState(), the build method will run again.
    setState(() {
      counter = counter + 1;
      numbers.add(numbers.length);
    });
    print(numbers);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.black,
        backgroundColor: const Color(0xFF181818),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'click count',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              for (var n in numbers)
                Text(
                  '$n',
                  style: const TextStyle(color: Colors.white),
                ),
              IconButton(
                iconSize: 40,
                onPressed: onClicked,
                icon: const Icon(
                  Icons.add_box_rounded,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
