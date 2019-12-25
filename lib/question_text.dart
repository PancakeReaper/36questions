import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100.0, vertical: 25.0),
      child: Center(
        child: Text(
          "Some long ass question text and more personal attacks?",
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontSize: 56,
            color: Colors.grey[300],
            shadows: [
              Shadow(
                  color: Colors.grey[800],
                  offset: Offset(3.5, 3.5),
                  blurRadius: 10.0),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
