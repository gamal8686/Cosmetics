import 'package:cosmetics/core/components/app_validator.dart';
import 'package:cosmetics/views/auth/forget_password/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_back.dart';
import '../../../core/components/app_button.dart';
import '../../../core/components/app_image.dart';
import '../../../core/components/app_input.dart';


class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordCubit(),

      child: Builder(
        builder: (context) {
          final cubit=BlocProvider.of<ForgetPasswordCubit>(context);
          return Scaffold(
            body: SingleChildScrollView(
              padding: EdgeInsetsDirectional.all(14.r).copyWith(top: 50.r),
              child: Form(
                key: cubit.formKey,
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
                      validator: InputValidator.phoneValidator ,
                      onSelectedCountryCode: cubit.onSelectedCountryCodeForgetPassword,
                      controller: cubit.controller,
                      label: 'Phone Number',
                      dropDown: true,
                    ),

                    SizedBox(height: 55.h),
                    BlocBuilder(
                   bloc: cubit,
                      builder: (context,state) {
                        return Center(
                          child: AppButton(
                            isLoading:cubit. isLoadingNext(),
                            width: 270.w,
                            onPressed: cubit.onPressedNext,
                            text: 'Next',
                          ),
                        );
                      }
                    ),
                    SizedBox(height: 80.h),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
