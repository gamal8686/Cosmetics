import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/ui/app_image.dart';
import '../../../core/ui/app_input.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(8.0.r),

          child: Column(

            children: [
              Center(
                child: Text(
                  'Categories',
                  style: TextStyle(
                    color: Color(0xff434C6D),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              AppInpot(labol: 'Search', path: 'search.svg'),
              SizedBox(height: 12.h),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => _item(),

                separatorBuilder: (context, index) => Divider(),

                itemCount: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_item() {
  return Row(
    children: [
      AppImage(
        path:
            'https://tse3.mm.bing.net/th/id/OIP.CkwDRWW9BKHYSNhnUAqADwHaD_?cb=12ucfimg=1&w=520&h=280&rs=1&pid=ImgDetMain&o=7&rm=3',
        height: 70.h,
        width: 70.w,
      ),
      SizedBox(width: 12.w),
      Text(
        'Bundles',
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: Color(0xff434C6D),
          fontFamily: 'Montserrat',
        ),
      ),
      SizedBox(width: 204.w),
      Expanded(child: AppImage(path: 'arrow_right.png', height: 70.h, width: 70.w)),
    ],
  );
}
