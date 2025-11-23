import 'package:flutter/material.dart';

abstract class Gradients {
  static RadialGradient radialGradient({required List<Color> gradientColors}) {
    return RadialGradient(
      colors: gradientColors,
      center: Alignment.topLeft,
      radius: 1.3,
    );
  }

}
