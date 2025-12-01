import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_image.dart';
import '../../../core/components/app_input.dart';


class CategoriesPage extends StatelessWidget {

  const CategoriesPage({super.key,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(

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
            AppInput(label: 'Search', path: 'search.svg', isBorder: 25,),
            SizedBox(height: 12.h),
            Expanded(
              child: ListView.separated(

                itemBuilder: (context, index) => _Item(),

                separatorBuilder: (context, index) => Divider(),

                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  class _Item extends StatelessWidget {
    @override
    Widget build(BuildContext context){
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

      Expanded(child: SizedBox(width: 290.w)),
      GestureDetector(
          onTap: () {

          },
          child: AppImage(path: 'arrow_right.png', height: 70.h, width: 70.w)),
    ],
  );}





}

















