import 'dart:async';

import 'package:amar_bakr/views/auth/appImage.dart';
import 'package:amar_bakr/views/auth/goto.dart';
import 'package:amar_bakr/views/home/view/welcome.dart';
import 'package:flutter/material.dart';

class Splashviews extends StatefulWidget {
  const Splashviews({super.key});

  @override
  State<Splashviews> createState() => _SplashviewsState();
}

class _SplashviewsState extends State<Splashviews> {
  @override
  void initState() {
    Timer(Duration(seconds: 1), () => goto(onpordengview()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppImage(path: 'splash.png'),
            SizedBox(height: 16),
            AppImage(path: 'Avon.png'),
          ],
        ),
      ),
    );
  }
}
