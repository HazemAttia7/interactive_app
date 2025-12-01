import 'package:flutter/widgets.dart';

abstract class AppColors {
  static final List<List<Color>> gradientColors = [
    orangeGradient,
    blueGradient,
    greenGradient,
    purpleGradient,
    darkPurpleGradient,
    darkFuturisticGradient,
  ];

  static const List<Color> activeGradient = [
    Color(0xff3DA8F9),
    Color(0xff00B4E4),
  ];

  static const List<Color> pendingGradient = [
    Color(0xff8E96A4),
    Color(0xff727A8A),
  ];

  static const List<Color> doneGradient = [
    Color(0xff00D975),
    Color(0xff00C37B),
  ];

  static const List<Color> orangeGradient = [
    Color(0xffFFBC00),
    Color(0xffFF7600),
  ];

  static const List<Color> blueGradient = [
    Color(0xFF0084FF),
    Color(0xFF002AFF),
  ];

  static const List<Color> purpleGradient = [
    Color(0xFFCC00FA),
    Color(0xFFDD50FD),
    Color(0xFFF874A0),
  ];

  static const List<Color> darkPurpleGradient = [
    Color(0xff317EFF),
    Color(0xFF7216FB),
  ];

  static const List<Color> greenGradient = [
    Color(0xFF00EB7D),
    Color(0xff00BF7C),
  ];

  static const List<Color> darkFuturisticGradient = [
    Color(0xFF0F172A),
    Color(0xFF1E293B),
    Color(0xFF334155),
  ];
}
