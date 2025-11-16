


import 'package:amar_bakr/core/components/app_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBack extends StatelessWidget {
  const AppBack({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: CircleAvatar(
          backgroundColor: Color(0xff1010100D).withValues(alpha: 0.05),
          radius: 15,
          child: AppImage(path: 'arrow_left.svg',height: 14.h,width: 6.w,),
        ),
      ),
    ) ;
  }
}
