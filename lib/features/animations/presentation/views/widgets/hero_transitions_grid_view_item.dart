import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interactive_app/core/utils/gradients.dart';
import 'package:like_button/like_button.dart';

class HeroTransitionsGridViewItem extends StatefulWidget {
  final List<Color> gradientColors;
  final String text;
  final IconData icon;
  final bool onTapDisabled, isLiked;
  const HeroTransitionsGridViewItem({
    super.key,
    required this.gradientColors,
    required this.text,
    required this.icon,
    this.onTapDisabled = false,
    this.isLiked = false,
  });

  @override
  State<HeroTransitionsGridViewItem> createState() =>
      _HeroTransitionsGridViewItemState();
}

class _HeroTransitionsGridViewItemState
    extends State<HeroTransitionsGridViewItem> {
  late bool _isLiked;
  @override
  void initState() {
    super.initState();
    _isLiked = widget.isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "container-${widget.text}",
      child: GestureDetector(
        onTap: widget.onTapDisabled
            ? null
            : () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        _buildHeroTransitionShowcaseView(context),
                  ),
                );
              },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            gradient: Gradients.radialGradient(
              gradientColors: widget.gradientColors,
            ),
          ),
          padding: EdgeInsets.all(16.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(widget.icon, color: Colors.white, size: 24.sp),
                  LikeButton(
                    isLiked: _isLiked,
                    onTap: (liked) async {
                      setState(() => _isLiked = !liked);
                      return !_isLiked;
                    },
                    size: 24.sp,
                    likeBuilder: (liked) => Icon(
                      liked
                          ? FontAwesomeIcons.solidHeart
                          : FontAwesomeIcons.heart,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                widget.text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Scaffold _buildHeroTransitionShowcaseView(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: HeroTransitionsGridViewItem(
                  gradientColors: widget.gradientColors,
                  text: widget.text,
                  icon: widget.icon,
                  onTapDisabled: true,
                  isLiked: _isLiked,
                ),
              ),
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => Navigator.pop(context),
                  child: Center(
                    child: Text("Go Back", style: TextStyle(fontSize: 16.sp)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
