import 'package:cosmetics/views/auth/forget_password/collection_forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_back.dart';
import '../../../core/components/app_button.dart';
import '../../../core/components/app_image.dart';
import '../../../core/components/app_input.dart';
import '../../../core/logic/helper_methods.dart';

import '../otp/view.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final collection = CollectionForgetPassword();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.all(14.r).copyWith(top: 50.r),
        child: Form(
          key: collection.formKey,
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

              AppInput(
                onSelectedCountryCode: (value) {
                  collection.selectedCountryCode = value;
                },
                controller: collection.controller,
                label: 'Phone Number',
                dropDown: true,
              ),

              SizedBox(height: 55.h),
              Center(
                child: AppButton(
                  width: 270.w,
                  onPressed: () {
                    if (collection.formKey.currentState!.validate()) {
                      collection.sendData();
                    }
                  //  goTo(VerifyCode());
                  },
                  text: 'Next',
                ),
              ),
              SizedBox(height: 80.h),
            ],
          ),
        ),
      ),
    );
  }
}
