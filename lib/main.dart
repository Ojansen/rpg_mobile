import 'package:flutter/material.dart';
import 'screens/start_screen.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
            bodyText2: TextStyle(fontSize: 24, color: Colors.white),
          ),
          fontFamily: 'MajorMono'),
      home: const StartScreen(),
    );
  }
}