import 'package:cosmetics/core/logic/dio_helper.dart';
import 'package:cosmetics/views/auth/create_account/collection_create_account.dart';
import 'package:cosmetics/views/auth/login/model.dart';
import 'package:cosmetics/views/auth/login/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_button.dart';
import '../../../core/components/app_image.dart';

import '../../../core/components/app_input.dart';
import '../../../core/components/app_login_or_register.dart';
import '../../../core/components/app_validator.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final collection = CollectionCreateAccount();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.all(14.r).copyWith(top: 40.r),
        child: Form(
          key: collection.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40.h),
              AppImage(path: 'logo.png', height: 65.h, width: 65.w),
              SizedBox(height: 40.h),
              Text(
                'Create Account',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 50.h),

              AppInput(controller: collection.name, label: 'Your Name'),
              AppInput(controller: collection.email, label: 'Email '),
              AppInput(
                validator: InputValidator.phoneValidator,
                onSelectedCountryCode: (value) {
                  collection.onSelectedCountryCode = value;
                },
                controller: collection.number,
                label: 'Phone Number',
                dropDown: true,
              ),
              AppInput(
                validator: InputValidator.passwordValidator,
                controller: collection.password,
                label: 'Create your Password',
                isPassword: true,
              ),
              AppInput(
                controller: collection.newPassword,
                validator: InputValidator.passwordValidator,
                label: 'Confirm password',
                isPassword: true,
              ),
              SizedBox(height: 90.h),
              Center(
                child: AppButton(
                  width: 270.w,
                  onPressed: () {
                    if (collection.formKey.currentState!.validate()) {
                      collection.sentData();
                    }
                    //goTo(VerifyCode(isFromCreateAccount: true), canPop: true);
                  },
                  text: 'Next',
                ),
              ),
              SizedBox(height: 80.h),
              AppLoginOrRegister(isLogin: false),
            ],
          ),
        ),
      ),
    );
  }
}
