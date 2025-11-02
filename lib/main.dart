import 'package:amar_bakr/core/helper/goto.dart';
import 'package:amar_bakr/views/home/page/categories.dart';
import 'package:amar_bakr/views/home/page/idpage.dart';
import 'package:amar_bakr/views/home/view/check_out.dart';
import 'package:amar_bakr/views/home/view/creat_new_account.dart';
import 'package:amar_bakr/views/home/view/create_account.dart';
import 'package:amar_bakr/views/home/view/verify_Code.dart';
import 'package:amar_bakr/views/home/view/forget%20_password.dart';
import 'package:amar_bakr/views/home/view/on_bordenge.dart';
import 'package:amar_bakr/views/home/view/logen.dart';

import 'package:flutter/material.dart';

import 'core/app/app_inpot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color primary = Color(0xff8E8EA9);
    final MaterialColor primarySwatch =
    MaterialColor(primary.value, <int, Color>{
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
    });
    return MaterialApp(
      navigatorKey: gotokey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
            bodyMedium: TextStyle(
                fontSize: 14,
                wordSpacing: 0,
                letterSpacing: 2,
                color: Color(0xff434C6D)
            ),
          ),

          fontFamily: 'Montserrat',
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
               fixedSize: Size.fromHeight(65),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40), // 🔹 الزوايا الدائرية
              ),
              backgroundColor: Color(0xffD75D72),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            fillColor: Color(0xff5A669066).withValues(alpha: .40),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                    color: Color(0xff5A669066).withValues(alpha: 0.040))
            ),
          ),
          appBarTheme: AppBarTheme(color: Color(0xffD9D9D9)),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: primarySwatch),

          cardColor: Color(0xffECA4C5),
          scaffoldBackgroundColor: Color(0xffD9D9D9),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(foregroundColor: Color(0xffD75D72)))),
        title: 'Cosmetics',
        home: CreatNewAccount()
    );




    // This trailing comma makes auto-formatting nicer for build methods.

  }
}
