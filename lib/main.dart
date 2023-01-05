import 'package:first_hehe/Quiz.dart';
import 'package:first_hehe/result.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  var _questions = [
    {
      'questionText': 'what\s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'what\s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'who\s your favourite instructor?',
      'answers':[
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  var _questionIndexx = 0;
  var _totalScore=0;
  void _restartQuiz() {
    setState((){
      _questionIndexx = 0;
      _totalScore=0;
    });
  }
  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndexx = _questionIndexx + 1;
    });
    if(_questionIndexx<_questions.length){
      print("there is more questions");
    }
  }

  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('hehehe'),
          ),
          backgroundColor: Colors.cyan,
        ),
        body: _questionIndexx<_questions.length ?
            Quiz(answerQuestion: _answerQuestion, questionIndexx: _questionIndexx, questions: _questions,)
            : Result(_totalScore,_restartQuiz),
      ),
    );
  }
}
