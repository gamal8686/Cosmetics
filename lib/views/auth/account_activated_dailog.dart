import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/ui/app_image.dart';
import '../../core/ui/app_buttom.dart';

class AccountActivatedDailog extends StatelessWidget {
  const AccountActivatedDailog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Container(
          margin: EdgeInsetsDirectional.all(15.r),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/lotties/success.svg',
                height: 150.h,
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.all(8.0.r),
                child: Text(
                  'Account Activated!',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                'Congratulations! Your account\n has been successfully activated',
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 26.h),

              AppFieldButtom(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: 'Return to login',
                width: 270.w,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
