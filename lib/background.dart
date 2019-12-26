import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final String _bgText;
  final double _opacity;

  Background(this._bgText, this._opacity);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
          width: double.infinity, height: double.infinity),
      color: Colors.red[800],
      child: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(milliseconds: 350),
          child: Text(
            _bgText,
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    );
  }
}
