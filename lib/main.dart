import 'package:amar_bakr/core/helper/goto.dart';
import 'package:amar_bakr/views/home/page/categories.dart';
import 'package:amar_bakr/views/home/page/idpage.dart';
import 'package:amar_bakr/views/home/view/Checkout.dart';
import 'package:amar_bakr/views/home/view/Createaccount.dart';
import 'package:amar_bakr/views/home/view/VerifyCode.dart';
import 'package:amar_bakr/views/home/view/homeview.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color primary= Color(0xffD9D9D9);
    final MaterialColor primarySwatch = MaterialColor(
      primary.value,
      <int, Color>{
        50: primary.withOpacity(.1),
        100: primary.withOpacity(.2),
        200: primary.withOpacity(.3),
        300: primary.withOpacity(.4),
        400: primary.withOpacity(.5),
        500: primary,
        600: primary.withOpacity(.7),
        700: primary.withOpacity(.8),
        800: primary.withOpacity(.9),
        900: primary,
      },
    );
    return MaterialApp(
      navigatorKey: gotokey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily:'Montserrat' ,
        filledButtonTheme: FilledButtonThemeData(
          
          style: FilledButton.styleFrom(
           // fixedSize: Size(270, 65),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60), // 🔹 الزوايا الدائرية
            ),
            backgroundColor: Color(0xffD75D72),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Color(0xff5A669066),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        appBarTheme: AppBarTheme(color: Color(0xffD9D9D9)),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: primarySwatch,
        ),

        cardColor: Color(0xffECA4C5),
        scaffoldBackgroundColor: Color(0xffD9D9D9),
      ),
      title: 'Cosmetics',
      home: CheckoutView(),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
