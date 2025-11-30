import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactive_app/core/utils/app_colors.dart';
import 'package:interactive_app/features/lists/data/models/list_item_model.dart';
import 'package:interactive_app/features/lists/presentation/views/widgets/reorderable_list_view_item.dart';

class CustomReorderableListView extends StatefulWidget {
  const CustomReorderableListView({super.key});

  @override
  State<CustomReorderableListView> createState() =>
      _CustomReorderableListViewState();
}

class _CustomReorderableListViewState extends State<CustomReorderableListView> {
  final List<ListItem> items = [
    ListItem(text: "Item 1", colors: AppColors.gradientColors[0]),
    ListItem(text: "Item 2", colors: AppColors.gradientColors[1]),
    ListItem(text: "Item 3", colors: AppColors.gradientColors[2]),
    ListItem(text: "Item 4", colors: AppColors.gradientColors[3]),
  ];

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      proxyDecorator: (child, index, animation) {
        return Material(
          elevation: 12,
          borderRadius: BorderRadius.circular(16.r),
          color: Colors.transparent,
          shadowColor: Colors.black12,
          child: child,
        );
      },
      itemBuilder: (context, index) => TweenAnimationBuilder<double>(
        key: ValueKey(index),
        tween: Tween<double>(begin: 0, end: 1),
        duration: const Duration(milliseconds: 900),
        curve: Curves.elasticOut,
        builder: (context, double value, Widget? child) {
          return Transform.scale(scale: value, child: child);
        },
        child: ReorderableListViewItem(item: items[index]),
      ),
      itemCount: 4,
      onReorder: reOrder,
    );
  }

  void reOrder(int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex < newIndex) {
        newIndex--;
      }

      final item = items.removeAt(oldIndex);
      items.insert(newIndex, item);
    });
  }
}
