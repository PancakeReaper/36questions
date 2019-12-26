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
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}
