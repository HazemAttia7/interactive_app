import 'package:flutter/material.dart';
import 'package:interactive_app/features/animations/presentation/views/widgets/animated_list_view_item.dart';

class AnimatedListView extends StatelessWidget {
  const AnimatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: index == 3 ? 0 : 12),
          child: AnimatedListViewItem(text: 'List Item ${index + 1}'),
        );
      },
    );
  }
}
