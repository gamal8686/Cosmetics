import 'package:amar_bakr/core/logic/helper_methods.dart';
import 'package:amar_bakr/views/auth/password_created_dailog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/ui/app_image.dart';
import '../../core/ui/app_buttom.dart';
import 'account_activated_dailog.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 15,
            child: AppImage(path: 'arrow_left.svg'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.all(13.r),
        child: Column(
          children: [
            AppImage(path: 'logo.png', height: 65.h, width: 65.w),
            SizedBox(height: 40.h),
            Text(
              'Verify Code',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 40.h),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color(0xff8E8EA9),
                ),
                children: [
                  TextSpan(
                    text: 'We just sent a 4-digit verification code to\n',
                  ),
                  TextSpan(
                    text: '+20 1022658997.',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(text: 'Enter the code in the box\n'),
                  TextSpan(text: 'below to continue.'),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: Text('Edit the number'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80.r, right: 80.r),
              child: PinCodeTextField(
                keyboardType: TextInputType.number,

                appContext: context,
                cursorColor: Theme.of(context).primaryColor,

                length: 4,
                backgroundColor: Theme.of(
                  context,
                ).primaryColor.withValues(alpha: 0.040),
                pinTheme: PinTheme(
                  inactiveFillColor: Theme.of(context).primaryColor,

                  selectedColor: Color(0xffD75D72),
                  activeColor: Color(0xffD75D72),
                  inactiveColor: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(8),

                  fieldWidth: 45.w,
                  fieldHeight: 45.h,
                  shape: PinCodeFieldShape.box,
                ),
              ),
            ),
            SizedBox(height: 40.h),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Didn’t receive a code?',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
                TextButton(
                  clipBehavior: Clip.none,
                  onPressed: () {},
                  child: Text('Resend'),
                ),
                Spacer(),
                TextButton(onPressed: () {}, child: Text('0:36')),
              ],
            ),

            SizedBox(height: 116.h),
            AppFieldButtom(
              width: 270.w,

              text: 'Done',
              onPressed: () {
                showDialog(
                  context: context,
                  barrierColor: Colors.black.withValues(alpha: 0.4),
                  builder: (context) => const AccountActivatedDailog(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
