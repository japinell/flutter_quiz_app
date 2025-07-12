class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // Create a copy of the answers list
    final shuffledList = List.of(answers);
    // Shuffle the copied list
    shuffledList.shuffle();
    // Return the shuffled list
    return shuffledList;
  }
}
