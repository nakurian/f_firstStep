import 'package:f_firstStep/quiz.dart';
import 'package:flutter/material.dart';

import './results.dart';

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
  var _questionIndex = 0;
  var _totalScore = 0;

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'Text': 'black', 'score': 10},
          {'Text': 'white', 'score': 10},
          {'Text': 'red', 'score': 5},
          {'Text': 'green', 'score': 6}
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'Text': 'rabbit', 'score': 10},
          {'Text': 'donkey', 'score': 7},
          {'Text': 'lion', 'score': 6},
          {'Text': 'giraff', 'score': 5}
        ]
      },
      {
        'questionText': 'Who\'s your favorite person?',
        'answers': [
          {'Text': 'paul', 'score': 3},
          {'Text': 'paul', 'score': 5},
          {'Text': 'paul', 'score': 7},
          {'Text': 'paul', 'score': 10}
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
