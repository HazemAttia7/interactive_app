import 'package:flutter/material.dart';
import 'package:interactive_app/features/main/presentation/views/main_view.dart';

void main() {
  runApp(const InteractiveApp());
}

class InteractiveApp extends StatelessWidget {
  const InteractiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interactive App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const MainView(),
    );
  }
}
