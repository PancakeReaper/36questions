import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final String _bgText;

  Background(this._bgText);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
          width: double.infinity, height: double.infinity),
      color: Colors.red[800],
      child: Center(
        child: Text(
          _bgText,
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}
