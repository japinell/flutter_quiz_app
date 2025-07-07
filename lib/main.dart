import "package:flutter/material.dart";
import "package:flutter_quiz_app/StartScreen.dart";

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: StartScreen())),
    );
  }
}
