import 'package:amar_bakr/core/components/app_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/components/app_buttom.dart';
import '../../core/components/app_image.dart';
import '../../core/components/app_input.dart';



class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.all(14.r).copyWith(top: 50.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBack(),
            SizedBox(height: 40.h),

            AppImage(path: 'logo.png', height: 65.h, width: 65.w),
            SizedBox(height: 40.h),
            Text(
              'Forget Password',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 50.h),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Please enter your phone number below\n to recovery your password.',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 40.h),

            AppInpot(labol: 'Phone Number', drobDowen: true),

            SizedBox(height: 55.h),
            Center(
              child: AppFieldButtom(
                width: 270.w,
                onPressed: () {},
                text: 'Next',
              ),
            ),
            SizedBox(height: 80.h),
          ],
        ),
      ),
    );
  }
}
