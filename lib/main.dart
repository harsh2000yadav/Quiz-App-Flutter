import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';
void main() => {runApp(MyApp())};

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _qi=0;
  var _tScore=0;

  void _reset(){
    setState(() {
      _qi=0;
      _tScore=0;
    });
  }

  void _counterFn(int score){
    setState(() {
         _qi+=1;
    _tScore +=score;
    print('$_qi \'th question ');
    });
   
  }
  

  @override
  Widget build(BuildContext context) {

     var _questions = const [
      {
        'questionText': 'How many countries are there in the world?',
        'answers': [
          {'text': '180', 'score': 0},
          {'text': '196', 'score': 1},
          {'text': '206', 'score': 0},
          {'text': '194', 'score': 0}
        ]
      },
      {
        'questionText': 'What\'s the capital of Turkey?',
        'answers': [
          {'text': 'Doha', 'score': 0},
          {'text': 'Istanbul', 'score': 0},
          {'text': 'Athens', 'score': 0},
          {'text': 'Ankara', 'score': 1}
        ]
      },
      {
        'questionText': 'Which is the fifth largest country of the world?',
        'answers': [
          {'text': 'China', 'score': 0},
          {'text': 'India', 'score': 0},
          {'text': 'Brazil', 'score': 1},
          {'text': 'USA', 'score': 0}
        ]
      },
      {
        'questionText': 'Most populous country?',
        'answers': [
          {'text': 'India', 'score': 0},
          {'text': 'China', 'score': 1},
          {'text': 'Mexico', 'score': 0},
          {'text': 'USA', 'score': 0}
        ]
      
      }
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Geography Quiz'),
        ), 
        body: _qi<_questions.length? Quiz(questions: _questions, qi: _qi, counterFn: _counterFn,)
        :Result(_tScore, _reset),
      )
    );
  }
}