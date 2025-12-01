
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/components/app_button.dart';
import '../../core/components/app_image.dart';
import '../../core/components/app_input.dart';

import '../../core/components/app_login_or_register.dart';
import '../../core/logic/helper_methods.dart';
import '../home/views.dart';
import 'forget _password.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
              AppInput(
                isPassword: true,
                isKeyboardType: true,
                DropDown: true,
                label: 'Phone Number',
              ),
              AppInput(

                isKeyboardType: true,

                label: 'Your Password',
                path: 'arrow_down.svg',
                isPassword: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    goTo(ForgetPasswordView(),canPop: true);
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
                child: AppButton(
                    width: 268,
                    text: 'Login', onPressed: () {
                      goTo(HomeView(),canPop: false);}),
              ),
              SizedBox(height: 42.h),
             AppLoginOrRegister(),

            ],
          ),
        ),
      ),
    );
  }
}
