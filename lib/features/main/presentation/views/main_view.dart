import 'package:flutter/material.dart';
import 'package:interactive_app/features/main/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:interactive_app/features/main/presentation/views/widgets/main_view_body.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;
  final PageController pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void _onSelectTab(int index) {
    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
      });
      pageController.jumpToPage(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainViewBody(pageController: pageController),
      bottomNavigationBar: SafeArea(
        child: CustomBottomNavBar(
          index: _currentIndex,
          onSelectTab: _onSelectTab,
        ),
      ),
    );
  }
}
