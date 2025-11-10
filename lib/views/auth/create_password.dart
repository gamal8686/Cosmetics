import 'package:amar_bakr/views/auth/screen_dailog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/ui/app_Image.dart';
import '../../core/ui/app_buttomnavigatortext.dart';
import '../../core/ui/app_filledbuttom.dart';
import '../../core/ui/app_inpot.dart';



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
                 showDialog(context: context, builder:(context) =>  ScreenDialog(),);
                },
                text: 'Confirm',
              ),
            ),
            SizedBox(height: 80.h),
            Padding(
              padding:  EdgeInsets.only(left: 80.r),
              child: AppButtomNavigatorTest(
                text: 'Have an account?',
                textButtom: 'Login',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
