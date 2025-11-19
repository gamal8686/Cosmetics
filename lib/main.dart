
import 'package:amar_bakr/views/auth/account_activated_dailog.dart';
import 'package:amar_bakr/views/auth/create_account.dart';
import 'package:amar_bakr/views/auth/create_password.dart';
import 'package:amar_bakr/views/auth/forget%20_password.dart';
import 'package:amar_bakr/views/auth/login.dart';
import 'package:amar_bakr/views/auth/otpview.dart';
import 'package:amar_bakr/views/check_out.dart';
import 'package:amar_bakr/views/home/pages/category_page.dart';
import 'package:amar_bakr/views/home/pages/home_page.dart';
import 'package:amar_bakr/views/home/pages/my_cart.dart';
import 'package:amar_bakr/views/home/pages/profile.dart';
import 'package:amar_bakr/views/on_boarding.dart';
import 'package:amar_bakr/views/home/views_page.dart';
import 'package:amar_bakr/views/splash.dart';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/logic/helper_methods.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

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
    return ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        navigatorKey: navKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              fontSize: 14.sp,
              wordSpacing: 0,
              letterSpacing: 2,
              color: Color(0xff434C6D),
            ),
          ),

          fontFamily: 'Montserrat',
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              fixedSize: Size.fromHeight(65.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.r), // 🔹 الزوايا الدائرية
              ),
              backgroundColor: Color(0xffD75D72),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            fillColor: Color(0xff5a669066).withValues(alpha: .40),
          //  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: Color(0xff5a669066).withValues(alpha: 0.040),
              ),
            ),
          ),
          appBarTheme: AppBarTheme(color: Color(0xffD9D9D9)),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: primarySwatch),

          cardColor: Color(0xffECA4C5),
          scaffoldBackgroundColor: Color(0xffD9D9D9),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: Color(0xffD75D72)),
          ),
        ),
        title: 'Cosmetics',
        home: Splashviews(),
      ),
    );

    // This trailing comma makes auto-formatting nicer for build methods.
  }
}


