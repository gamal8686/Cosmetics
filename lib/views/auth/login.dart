import 'package:amar_bakr/core/logic/helper_methods.dart';
import 'package:amar_bakr/views/auth/otpview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/components/app_buttom.dart';
import '../../core/components/app_image.dart';
import '../../core/components/app_input.dart';

import '../home/views_page.dart';
import 'create_account.dart';
import 'forget _password.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LogenViewState();
}

class _LogenViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(13.r).copyWith(top: 48.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppImage(path: 'login.png', height: 227.h, width: 284.w),
              SizedBox(height: 25.h),
              Center(
                child: Text(
                  'Login Now',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 14.h),

              Center(
                child: Text(
                  'Please enter the details below to continue',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              AppInpot(
                iskeyboardType: true,
                drobDowen: true,
                labol: 'Phone Number',
              ),
              AppInpot(

                iskeyboardType: true,

                labol: 'Your Password',
                path: 'arrow_down.svg',
                ispassword: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    goTo(ForgetPassword(),canPop: true);
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 42.h),

              Center(
                child: AppFieldButtom(
                    width: 268,
                    text: 'Login', onPressed: () {
                      goTo(ViewHome(),canPop: false);}),
              ),
              SizedBox(height: 42.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account?',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      goTo(CreateAccount());
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
