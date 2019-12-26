import 'package:flutter/material.dart';

import 'background.dart';
import 'next_buttons.dart';
import 'question_text.dart';

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container for the background number
          Background('36'),
          // Container for the question
          QuestionText(36),
          // Invisible gestures to advance the question
          NextButtons(tempFunc, tempFunc),
        ],
      ),
    );
  }

  void tempFunc() {
    print("test");
  }
}
