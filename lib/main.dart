import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interactive_app/features/main/presentation/views/main_view.dart';

void main() {
  runApp(const InteractiveApp());
}

class InteractiveApp extends StatelessWidget {
  const InteractiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.42857142857144, 832.7619047619048),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return MaterialApp(
          title: 'Interactive App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: Colors.white,
          ),
          home: const MainView(),
        );
      },
    );
  }
}
