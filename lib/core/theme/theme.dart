import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.black,
    secondary: const Color(0xffF9FAFB),
    surface: Colors.white,
    outline: Colors.grey.shade300,
    outlineVariant: Colors.grey.shade300,
    shadow: Colors.white,
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xff030712),
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: const Color(0xff969EAC),
    secondary: const Color(0xff101828),
    surface: const Color(0xff030712),
    outline: const Color(0xff1E2939),
    outlineVariant: const Color(0xff364153),
    shadow: Colors.grey.shade700,
  ),
  shadowColor: Colors.grey.shade900,
);
