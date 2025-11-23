import 'package:flutter/material.dart';

class AnimationsHeaderText extends StatelessWidget {
  const AnimationsHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Animations",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text(
              "Smooth transitions and effects",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
