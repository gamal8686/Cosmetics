import 'dart:async';

import 'package:amar_bakr/views/on_boarding.dart';
import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/components/app_image.dart';
import '../core/logic/helper_methods.dart';

class Splashviews extends StatefulWidget {
  const Splashviews({super.key});

  @override
  State<Splashviews> createState() => _SplashviewsState();
}

class _SplashviewsState extends State<Splashviews> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => goTo(OnBoardingView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SpinPerfect(
                duration: Duration(seconds: 4),
                child: AppImage(path: 'logo.png')),
            SizedBox(height: 16.h),
            AppImage(path: 'splash_txt.png'),
          ],
        ),
      ),
    );
  }
}
