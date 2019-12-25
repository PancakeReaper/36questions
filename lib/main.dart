import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:questions_36/background.dart';
import 'package:questions_36/question_text.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Container for the background number
            Background(),
            // Container for the question
            QuestionText(),
          ],
        ),
      ),
    );
  }
}
