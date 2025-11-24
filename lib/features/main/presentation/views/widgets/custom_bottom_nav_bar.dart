import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interactive_app/features/main/presentation/views/widgets/bottom_nav_bar_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int index;
  final Function(int index) onSelectTab;
  const CustomBottomNavBar({
    super.key,
    required this.index,
    required this.onSelectTab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
      ),
      padding: EdgeInsets.symmetric(vertical: 8.sp),
      child: SizedBox(
        child: Row(
          children: [
            Expanded(
              child: BottomNavBarItem(
                text: "Home",
                icon: FontAwesomeIcons.house,
                isSelected: index == 0,
                onTap: () => onSelectTab(0),
              ),
            ),
            Expanded(
              child: BottomNavBarItem(
                text: "Animations",
                icon: Icons.auto_awesome_outlined,
                isSelected: index == 1,
                onTap: () => onSelectTab(1),
              ),
            ),
            Expanded(
              child: BottomNavBarItem(
                text: "Lists",
                icon: FontAwesomeIcons.list,
                isSelected: index == 2,
                onTap: () => onSelectTab(2),
              ),
            ),
            Expanded(
              child: BottomNavBarItem(
                text: "Timeline",
                icon: FontAwesomeIcons.clock,
                isSelected: index == 3,
                onTap: () => onSelectTab(3),
              ),
            ),
            Expanded(
              child: BottomNavBarItem(
                text: "Profile",
                icon: FontAwesomeIcons.person,
                isSelected: index == 4,
                onTap: () => onSelectTab(4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
