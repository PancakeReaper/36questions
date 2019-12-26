import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_home.dart';
import 'style.dart';

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
      home:  AppHome(),
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
