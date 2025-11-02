import 'dart:async';

import 'package:amar_bakr/core/app/app_Image.dart';
import 'package:amar_bakr/core/helper/goto.dart';
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
    Timer(Duration(seconds: 3), () => goto(onpordengview()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
