import 'dart:async';


import 'package:amar_bakr/views/home/on_boarding.dart';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/logic/helper_methods.dart';
import '../core/ui/app_Image.dart';

class Splashviews extends StatefulWidget {
  const Splashviews({super.key});

  @override
  State<Splashviews> createState() => _SplashviewsState();
}

class _SplashviewsState extends State<Splashviews> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => goto(OnBoardingview()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppImage(path: 'logo.png'),
            SizedBox(height: 16.h),
            AppImage(path: 'splash_txt.png'),
          ],
        ),
      ),
    );
  }
}
