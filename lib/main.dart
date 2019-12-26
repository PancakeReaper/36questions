import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:questions_36/background.dart';
import 'package:questions_36/question_text.dart';
import 'package:questions_36/questions.dart';
import 'package:questions_36/style.dart';

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
            Background('36'),
            // Container for the question
            QuestionText(36),
          ],
        ),
      ),
      theme: _theme(),
    );
  }

  ThemeData _theme() {
    return ThemeData(
      textTheme: TextTheme(
        title: TitleTextStyle,
        body2: Body2TextStyle,
      ),
    );
  }
}
