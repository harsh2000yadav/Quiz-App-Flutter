import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result(this.score, this.reset); 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Center(
        child: Column(
          children: <Widget>[
            Text('Quiz Completed.\n Score: $score/4.',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic ),
            textAlign: TextAlign.center,),

            Container(
              child: FlatButton(onPressed: reset, 
              textColor: Colors.lightGreen,
              child: Text('Restart Quiz'))
            )
          ],
        ),
      ),
    );
  }
}