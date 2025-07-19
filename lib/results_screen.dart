import "package:flutter/material.dart";
import "package:flutter_quiz_app/data/questions.dart";

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswers});
  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i <= selectedAnswers.length; i++) {
      summary.add({
        "index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered X out of Y questions correctly!"),
            SizedBox(height: 30),
            Text("List of answers and questions..."),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text("Restart Quiz")),
          ],
        ),
      ),
    );
  }
}
