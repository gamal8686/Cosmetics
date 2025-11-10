
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/ui/app_Image.dart';
import '../../core/ui/app_filledbuttom.dart';

class ScreenDialog extends StatelessWidget {
  const ScreenDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        children: [Container(
          margin: EdgeInsetsDirectional.all(15.r),
          child: Column(

            children: [
              AppImage(path: 'success.svg'),
              SizedBox(height: 10.h),
              Padding(
                padding:  EdgeInsets.all(8.0.r),
                child: Text(
                  'Password Created!',
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 5.h,),
              Text(
                'Congratulations! Your password\n has been successfully created',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 26.h,),

              AppFieldButtom(onPressed: () {

              }, text: 'Return to login', width: 270.w,),

            ],
          ),
        )
        ]

    );
  }
}
