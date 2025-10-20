import 'package:amar_bakr/views/auth/goto.dart';
import 'package:amar_bakr/views/home/view/homeview.dart';
import 'package:amar_bakr/views/home/view/logen.dart';
import 'package:amar_bakr/views/home/view/splash.dart';
import 'package:amar_bakr/views/home/view/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: gotokey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xffD9D9D9)),
        fontFamily: 'Montserrat',
        cardColor: Color(0xffECA4C5),
        scaffoldBackgroundColor: Color(0xffD9D9D9),
      ),
      title: 'Cosmetics',
      home: Homeview(),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
