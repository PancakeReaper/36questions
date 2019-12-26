import 'package:flutter/material.dart';
import 'package:questions_36/questions.dart';

import 'background.dart';
import 'next_buttons.dart';
import 'question_text.dart';

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState(0);
}

class _AppHomeState extends State<AppHome> {
  int _currQuestion;

  _AppHomeState(this._currQuestion);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container for the background number
          Background((0 < _currQuestion && _currQuestion < Questions.size() - 1) ? _currQuestion.toString() : ''),
          // Container for the question
          QuestionText(_currQuestion),
          // Invisible gestures to advance the question
          NextButtons(_prevQuestion, _nextQuestion),
        ],
      ),
    );
  }

  void _nextQuestion() {
    if (_currQuestion < Questions.size() - 1)
      setState(() {
        _currQuestion++;
      });
  }

  void _prevQuestion() {
    if (_currQuestion > 1)
      setState(() {
        _currQuestion--;
      });
  }
}
