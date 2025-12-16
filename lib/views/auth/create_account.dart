
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/components/app_button.dart';
import '../../core/components/app_image.dart';

import '../../core/components/app_input.dart';
import '../../core/components/app_login_or_register.dart';
import '../../core/logic/helper_methods.dart';
import 'otp.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.all(14.r).copyWith(top: 40.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage(path: 'logo.png', height: 65.h, width: 65.w),
            SizedBox(height: 40.h),
            Text(
              'Create Account',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 50.h),

            AppInput(label: 'Your Name',),
            AppInput(label: 'Phone Number', dropDown: true),
            AppInput(label: 'Create your password', isPassword: true),
            AppInput(label: 'Confirm password', isPassword: true),
            SizedBox(height: 90.h),
            Center(
              child: AppButton(
                width: 270.w,
                onPressed: () {

                  goTo(VerifyCode(isFromCreateAccount: true),canPop: true);},
                text: 'Next',
              ),
            ),
            SizedBox(height: 80.h),
            AppLoginOrRegister(isLogin: false,),



          ],
        ),
      ),
    );
  }
}
