import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            height: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(height: 50),
          Text(
            "Flutter Quiz App",
            style: TextStyle(color: Colors.white, fontSize: 32),
          ),
          SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt),
            label: Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
