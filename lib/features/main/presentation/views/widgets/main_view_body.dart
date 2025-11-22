import 'package:flutter/material.dart';
import 'package:interactive_app/features/home/presentation/views/home_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: HomeView());
  }
}
