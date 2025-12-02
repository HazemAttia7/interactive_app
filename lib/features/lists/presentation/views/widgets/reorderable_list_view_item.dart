import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/core/utils/gradients.dart';
import 'package:interactive_app/features/lists/data/models/list_item_model.dart';

class ReorderableListViewItem extends StatelessWidget {
  final ListItem item;
  const ReorderableListViewItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.sp),
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline,
          width: 1.sp,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            blurRadius: 16,
            spreadRadius: -5,
            offset: Offset(0, 10.sp),
          ),
        ],
      ),
      child: SizedBox(
        height: 50.sp,
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.gripVertical,
              color: Theme.of(context).hintColor,
              size: 14.sp,
            ),
            Gap(10.sp),
            Container(
              width: 50.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                gradient: Gradients.radialGradient(gradientColors: item.colors),
              ),
            ),
            Gap(10.sp),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.text, style: TextStyle(fontSize: 14.sp)),
                  Text(
                    "Long press to drag",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
