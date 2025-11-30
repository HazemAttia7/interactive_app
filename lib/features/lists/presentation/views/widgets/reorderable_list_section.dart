import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/lists/presentation/views/widgets/custom_reorderable_list_view.dart';

class ReorderableListSection extends StatefulWidget {
  const ReorderableListSection({super.key});

  @override
  State<ReorderableListSection> createState() => _ReorderableListSectionState();
}

class _ReorderableListSectionState extends State<ReorderableListSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Reorderable List", style: TextStyle(fontSize: 16.sp)),
          Gap(10.sp),
          const CustomReorderableListView(),
        ],
      ),
    );
  }
}
