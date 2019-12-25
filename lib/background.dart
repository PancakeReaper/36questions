import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
          width: double.infinity, height: double.infinity),
      color: Colors.red[800],
      child: Center(
        child: Text(
          "36",
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
          ),
        ),
      ),
    );
  }
}
