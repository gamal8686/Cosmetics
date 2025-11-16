import 'package:amar_bakr/core/logic/helper_methods.dart';
import 'package:amar_bakr/views/auth/verify_Code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/components/app_buttom.dart';
import '../../core/components/app_image.dart';

import '../../core/components/app_input.dart';
import 'login.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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

            AppInpot(labol: 'Your Name'),
            AppInpot(labol: 'Phone Number', drobDowen: true),
            AppInpot(labol: 'Create your password', ispassword: true),
            AppInpot(labol: 'Confirm password', ispassword: true),
            SizedBox(height: 90.h),
            Center(
              child: AppFieldButtom(
                width: 270.w,
                onPressed: () {

                  goTo(VerifyCode());},
                text: 'Next',
              ),
            ),
            SizedBox(height: 80.h),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Have an account?',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
                TextButton(onPressed: () {goTo(LoginView());}, child: Text('Login')),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
