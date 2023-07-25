class QuizQuestion{
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> shuffeledQuestions(){
    final shuffeledList = List.of(answers);
    shuffeledList.shuffle();
    return shuffeledList;
  }
}