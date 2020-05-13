import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qi;
  final Function counterFn;

  Quiz({this.questions, this.qi, this.counterFn});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[qi]['questionText']),

        ...(questions[qi]['answers'] as List<Map<String, Object>>).map((answer){
            return Answer(() => counterFn(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}