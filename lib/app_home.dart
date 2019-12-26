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
  int _newQuestion;
  double _textOpacity;
  double _numberOpacity;
  bool _buttonsActive;

  _AppHomeState(this._currQuestion) {
    _newQuestion = _currQuestion;
    _textOpacity = 1.0;
    _numberOpacity = 0.0;
    _buttonsActive = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container for the background number
          Background(_currQuestion.toString(), _numberOpacity),
          // Container for the question
          AnimatedOpacity(
            opacity: _textOpacity,
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 900),
            child: QuestionText(_currQuestion),
            onEnd: _onAnimEnd,
          ),
          // Invisible gestures to advance the question
          NextButtons(_prevQuestion, _nextQuestion),
        ],
      ),
    );
  }

  void _nextQuestion() {
    if (_buttonsActive && _currQuestion < Questions.size() - 1)
      setState(() {
        _newQuestion = _currQuestion + 1;
        _buttonsActive = false;
        _textOpacity = 0.0;
        _numberOpacity = 0.0;
      });
  }

  void _prevQuestion() {
    if (_buttonsActive && _currQuestion > 1)
      setState(() {
        _newQuestion = _currQuestion - 1;
        _buttonsActive = false;
        _textOpacity = 0.0;
        _numberOpacity = 0.0;
      });
  }

  void _onAnimEnd() {
    if(_textOpacity == 0.0) {
      setState(() {
      _currQuestion = _newQuestion;
      _textOpacity = 1.0;
      _numberOpacity = 1.0;
      });
    } else {
      setState(() => _buttonsActive = true);
    }
  }
}
