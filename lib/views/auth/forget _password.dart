import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/ui/app_Image.dart';
import '../../core/ui/app_filledbuttom.dart';
import '../../core/ui/app_inpot.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 15,
            child: AppImage(path: 'arrow_left.svg'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.all(14.r).copyWith(top: 40.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
