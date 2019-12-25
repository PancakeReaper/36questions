import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            Container(
              constraints: BoxConstraints.expand(
                  width: double.infinity, height: double.infinity),
              color: Colors.red[800],
              child: Center(
                  child: Text("36",
                      style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 220,
                        color: Colors.white12,
                        shadows: [
                          Shadow(
                            color: Colors.white24,
                            blurRadius: 5.0,
                          ),
                        ],
                      ))),
            ),
            // Container for the question
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
