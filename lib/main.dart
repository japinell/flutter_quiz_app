import "package:flutter/material.dart";
import "package:flutter_quiz_app/quiz.dart";

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (Quiz());
  }
}
