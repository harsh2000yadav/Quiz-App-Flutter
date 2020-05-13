import 'package:flutter/material.dart';
import './question.dart';


class Answer extends StatelessWidget {
  final Function counterFn;
  final String answerText;

  Answer(this.counterFn, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.lightGreenAccent
        ,onPressed: counterFn,
        child: Text(answerText),),
    );
  }
}