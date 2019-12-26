import 'package:flutter/material.dart';

// I kinda want this as const but Colors.grey[800] is not a const value?
final Body2TextStyle = TextStyle(
  fontFamily: 'DancingScript',
  fontSize: 56,
  color: Colors.grey[300],
  shadows: [
    Shadow(
      color: Colors.grey[800],
      offset: Offset(3.5, 3.5),
      blurRadius: 10.0,
    ),
  ],
);

final TitleTextStyle = TextStyle(
  fontFamily: 'Lobster',
  fontSize: 255,
  color: Colors.white12,
  shadows: [
    Shadow(
      color: Colors.white12,
      blurRadius: 5.0,
    ),
  ],
);

