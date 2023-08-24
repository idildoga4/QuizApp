class QuizQuestions
{
  const QuizQuestions(this.quizImage,this.text,this.answers);

  final String text;
  final List<String> answers;
  final String? quizImage;

  List<String> ShuffledAnswers()
  {
    final shuffledList=List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}