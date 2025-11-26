
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/components/app_button.dart';
import '../../core/components/app_image.dart';
import '../../core/components/app_input.dart';
import '../../core/logic/helper_methods.dart';
import 'account_dailog.dart';
import 'login.dart';


class CreatePasswordView extends StatelessWidget {
  const CreatePasswordView({super.key});

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
            Align(
              alignment: Alignment.center,
              child: Text(
                'The password should have at least\n 6 characters.',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 80.h),

            AppInput(label: 'New password', isPassword: true,),
            AppInput(label: 'Confirm password', isPassword: true),
            SizedBox(height: 72.h),
            Center(
              child: AppButton(
                width: 270,
                onPressed: () {

                  showDialog(
                    context: context,
                    builder: (context) => const AccountActivatedDailog(isFromCreateAccount: true,),
                  );
                },
                text: 'Confirm',
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
