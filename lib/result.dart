import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int reusltScore;
  final Function resetHandler;

  Result(this.reusltScore ,this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (reusltScore <= 8) {
      resultText = "you are awesome and innocent";
    } else if (reusltScore <= 12) {
      resultText = "pretty likeable";
    } else if (reusltScore <= 16) {
      resultText = "you are ... strange";
    } else {
      resultText = "you are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              "yor score is $reusltScore and $resultPhrase",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(onPressed: resetHandler, child: Text('Restart Quiz'))
          ],
        ),

      ),
    );
  }
}
