import 'package:amar_bakr/core/logic/helper_methods.dart';
import 'package:amar_bakr/views/auth/password_created_dailog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/ui/app_image.dart';
import '../../core/ui/app_buttom.dart';
import '../../core/ui/app_input.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

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

            AppInpot(labol: 'New password', ispassword: true),
            AppInpot(labol: 'Confirm password', ispassword: true),
            SizedBox(height: 72.h),
            Center(
              child: AppFieldButtom(
                width: 270,
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierColor: Colors.black..withValues(alpha: 0.40),
                    builder: (context) => const ScreenDialogPassword(),
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
                TextButton(onPressed: () {}, child: Text('Login')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
