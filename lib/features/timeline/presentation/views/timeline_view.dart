import 'package:flutter/material.dart';
import 'package:interactive_app/features/timeline/presentation/views/widgets/timeline_view_body.dart';

class TimelineView extends StatelessWidget {
  const TimelineView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: TimelineViewBody(),);
  }
}