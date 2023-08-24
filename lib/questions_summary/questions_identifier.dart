import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget
{
  const QuestionIdentifier({super.key,required this.isCorrectAnswer,required this.questionIndex});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context)
  {
    final questionNumber=questionIndex+1;
    return Container(
      width:30,
      height:30,
      alignment: Alignment.center,
      decoration: BoxDecoration
      (
        color:isCorrectAnswer?Color.fromARGB(255, 174, 205, 231):Color.fromARGB(255, 242, 207, 180),
        borderRadius:BorderRadius.circular(100),
      ),
      child:Text(
        questionNumber.toString(),
        style:const TextStyle(fontWeight:FontWeight.bold,color:Color.fromARGB(255,22,2,56)),
      ),
    );
  }
}