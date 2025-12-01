import 'package:flutter/material.dart';
import 'package:interactive_app/features/animations/presentation/views/animations_view.dart';
import 'package:interactive_app/features/home/presentation/views/home_view.dart';
import 'package:interactive_app/features/lists/presentation/views/lists_view.dart';
import 'package:interactive_app/features/timeline/presentation/views/timeline_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      children: const [
        HomeView(),
        AnimationsView(),
        ListsView(),
        TimelineView(),
      ],
    );
  }
}
