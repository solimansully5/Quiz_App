import 'package:flutter/material.dart';
import 'package:first_hehe/Question.dart';
import 'package:first_hehe/Answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String,Object>> questions;
  final int questionIndexx;

   Quiz({@required this.answerQuestion, @required this.questions,@required this.questionIndexx}) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question.seko(questionText: questions[questionIndexx]['questionText']),
        ...(questions[questionIndexx]['answers'] as List<Map<String,Object>>).map((answeer) {
          return Answer(
              selectHandler: () => answerQuestion(answeer['score']), answertext: answeer['text']);
        }).toList()
      ],
    );
  }
}
