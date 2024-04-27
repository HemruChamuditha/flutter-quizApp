class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> shuffleQuizQuestion() {
    final List<String> shuffledQuizQuestionList = List.of(answers);
    shuffledQuizQuestionList.shuffle();
    return shuffledQuizQuestionList;
  }
}
