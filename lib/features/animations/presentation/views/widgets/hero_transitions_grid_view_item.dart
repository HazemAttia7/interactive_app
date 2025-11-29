import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interactive_app/core/utils/gradients.dart';
import 'package:like_button/like_button.dart';

class HeroTransitionsGridViewItem extends StatelessWidget {
  final List<Color> gradientColors;
  final String text;
  final IconData icon;
  const HeroTransitionsGridViewItem({
    super.key,
    required this.gradientColors,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          gradient: Gradients.radialGradient(gradientColors: gradientColors),
        ),
        padding: EdgeInsets.all(16.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon, color: Colors.white, size: 24.sp),
                LikeButton(
                  size: 24.sp,
                  likeBuilder: (isLiked) => Icon(
                    isLiked
                        ? FontAwesomeIcons.solidHeart
                        : FontAwesomeIcons.heart,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
