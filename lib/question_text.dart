import 'package:flutter/material.dart';

import 'questions.dart';

class QuestionText extends StatelessWidget {
  final int _currQuestion;

  QuestionText(this._currQuestion);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(MediaQuery.of(context).size.width - 750, 0.0),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
        child: Center(
          child: Text(
            Questions.getQuestion(_currQuestion),
            style: Theme.of(context).textTheme.body2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
