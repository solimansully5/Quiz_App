import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question.seko({this.questionText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 22, color: Colors.deepOrangeAccent),textAlign: TextAlign.center,
      ),
    );
  }
}
