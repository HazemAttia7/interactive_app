import 'package:flutter/material.dart';

void main() {
  runApp(const InteractiveApp());
}

class InteractiveApp extends StatelessWidget {
  const InteractiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Interactive App', theme: ThemeData.light());
  }
}
