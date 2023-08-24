import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget
{
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context)
  {
    return Center(
      child:Column(
        mainAxisSize:MainAxisSize.min,
        children:[
          Image.asset('assets/images/quiz-logo.png',
          width:300),
          OutlinedButton.icon(
            onPressed:startQuiz,
            style:OutlinedButton.styleFrom(foregroundColor:Color.fromARGB(255, 181, 163, 255)),
            icon:const Icon(Icons.arrow_right_alt_rounded),
            label: const Text('Start Quiz'),
          )

        ]
      )
    );
  }
}