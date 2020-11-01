import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultsScore;
  final Function resultsHandler;

  Result(this.resultsScore, this.resultsHandler);

  String get resultPhrase {
    var resultText = 'You did it!!';
    if (resultsScore <= 8) {
      resultText = 'You are awesome!!';
    } else if (resultsScore <= 12) {
      resultText = 'You are not that  awesome!!';
    } else {
      resultText = 'Who are you really?';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resultsHandler,
            child: Text('Restart Quiz'),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
