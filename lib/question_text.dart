import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100.0, vertical: 25.0),
      child: Center(
        child: Text(
          "Some long ass question text and more personal attacks?",
          style: Theme.of(context).textTheme.body2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
