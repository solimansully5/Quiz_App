import 'package:flutter/material.dart';
import 'package:first_hehe/Question.dart';
import 'package:first_hehe/Answer.dart';

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
  var _questionIndexx = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndexx = _questionIndexx + 1;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what\s your favourite color?',
        'answers': ['Red', 'Green', 'Yellow', 'Purple']
      },
      {
        'questionText': 'what\s your favourite animal?',
        'answers': ['Snake', 'Rabbit', 'Elephant', 'Lion']
      },
      {
        'questionText': 'who\s your favourite instructor?',
        'answers': ['Maximilian', 'Ahmed', 'Soliman', 'Eslam']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('hehehe'),
          ),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            Question.seko(questionText: questions[_questionIndexx]['questionText']),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
