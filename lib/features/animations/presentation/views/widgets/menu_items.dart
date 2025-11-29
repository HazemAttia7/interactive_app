import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.sp,
          color: Colors.deepPurple[300],
          child: Center(
            child: Text(
              "Menu Item One",
              style: TextStyle(fontSize: 16.sp, color: Colors.white),
            ),
          ),
        ),
        Container(
          height: 50.sp,
          color: Colors.deepPurple[200],
          child: Center(
            child: Text(
              "Menu Item Two",
              style: TextStyle(fontSize: 16.sp, color: Colors.white),
            ),
          ),
        ),
        Container(
          height: 50.sp,
          color: Colors.deepPurple[100],
          child: Center(
            child: Text(
              "Menu Item Three",
              style: TextStyle(fontSize: 16.sp, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
