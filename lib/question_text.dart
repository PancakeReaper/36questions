import 'package:flutter/material.dart';

import 'questions.dart';

class QuestionText extends StatelessWidget {
  int _currQuestion;

  QuestionText(this._currQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
      child: Center(
        child: Text(
          Questions.getQuestion(_currQuestion - 1),
          style: Theme.of(context).textTheme.body2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
