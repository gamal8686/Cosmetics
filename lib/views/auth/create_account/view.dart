import 'package:cosmetics/core/logic/dio_helper.dart';
import 'package:cosmetics/views/auth/create_account/cubit.dart';
import 'package:cosmetics/views/auth/login/model.dart';
import 'package:cosmetics/views/auth/login/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_button.dart';
import '../../../core/components/app_image.dart';

import '../../../core/components/app_input.dart';
import '../../../core/components/app_login_or_register.dart';
import '../../../core/components/app_validator.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateAccountCubit(),
      child: Builder(
        builder: (context) {
          final cubit = BlocProvider.of<CreateAccountCubit>(context);
          return Scaffold(
            body: SingleChildScrollView(
              padding: EdgeInsetsDirectional.all(14.r).copyWith(top: 40.r),
              child: Form(
                key: cubit.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 40.h),
                    AppImage(path: 'logo.png', height: 65.h, width: 65.w),
                    SizedBox(height: 40.h),
                    Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 50.h),

                    AppInput(controller: cubit.name, label: 'Your Name'),
                    AppInput(controller: cubit.email, label: 'Email '),
                    AppInput(
                      validator: InputValidator.phoneValidator,
                      onSelectedCountryCode:
                          cubit.onSelectedCountryCodeCreateAccount,
                      controller: cubit.number,
                      label: 'Phone Number',
                      dropDown: true,
                    ),
                    AppInput(
                      validator: InputValidator.passwordValidator,
                      controller: cubit.password,
                      label: 'Create your Password',
                      isPassword: true,
                    ),
                    AppInput(
                      controller: cubit.newPassword,
                      validator: InputValidator.passwordValidator,
                      label: 'Confirm password',
                      isPassword: true,
                    ),
                    SizedBox(height: 90.h),
                    BlocBuilder(
                      bloc: cubit,
                      builder: (context, state) {
                        return Center(
                          child: AppButton(
                            isLoading: cubit.isLoadingCreateAccount(),
                            width: 270.w,
                            onPressed: cubit.onPressedCreateAccount,
                            text: 'Next',
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 80.h),
                    AppLoginOrRegister(isLogin: false),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
