import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/animations_header_text.dart';
import 'package:interactive_app/features/lists/presentation/views/widgets/reorderable_list_section.dart';
import 'package:interactive_app/features/lists/presentation/views/widgets/staggered_grid_view_section.dart';

class ListsViewBody extends StatelessWidget {
  const ListsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(10.sp),
          const AnimatedTopPaddingHeaderText(
            title: "Interactive Lists",
            subtitle: "Reorderable and staggered layouts",
          ),
          Gap(25.sp),
          const StaggeredGridViewSection(),
          Gap(25.sp),
          const ReorderableListSection(),
        ],
      ),
    );
  }
}
