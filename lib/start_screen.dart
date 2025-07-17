import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

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
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 212, 178, 248),
              fontSize: 24,
            ),
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
