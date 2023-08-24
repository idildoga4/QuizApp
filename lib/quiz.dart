import 'package:quizapp/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/question_screen.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/result_screen.dart';

class Quiz extends StatefulWidget
{
 const  Quiz({super.key});
  @override
  State<Quiz> createState()
  {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>
{
  List<String> selectedAnswers=[];
  var activeScreen='start-screen';

  void switchScreen()
  {
    setState(() {
      activeScreen='questions-screen';
    });
  }

  void chooseAnswer(String answer)
  {
    selectedAnswers.add(answer);

    if(selectedAnswers.length==questions.length)
    {
      setState(() {
        activeScreen= 'results-screen';
      });
    }
  }
  void restartQuiz()
  {
    setState(() {
      selectedAnswers=[];
      activeScreen='question-screen';
    });
  }
@override
Widget build(BuildContext build)
{
  Widget screenWidget=StartScreen(switchScreen);

  if(activeScreen=='questions-screen')
  {
    screenWidget=QuestionsScreen(onSelectAnswer:chooseAnswer);
  }

  if(activeScreen=='results-screen')
  {
    screenWidget=ResultsScreen(chosenAnswers:selectedAnswers,onRestart: restartQuiz);
  }
  return MaterialApp(
    home:Scaffold(
      body:Container(
        decoration:const BoxDecoration(
          gradient:LinearGradient(
            colors:[Color.fromARGB(255, 255, 239, 252),
            Color.fromARGB(255, 213, 201, 213)],
            begin:Alignment.topLeft,
            end:Alignment.bottomRight
          ),
        ),
        child:screenWidget,
      ),)
  );
}
}