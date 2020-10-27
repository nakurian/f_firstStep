import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedAnswerHandler;
  final String disPlayText;
  Answer({this.selectedAnswerHandler, this.disPlayText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: selectedAnswerHandler,
        child: Text(disPlayText),
        color: Colors.blue,
      ),
    );
  }
}
