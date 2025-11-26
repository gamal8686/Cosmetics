import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/components/app_image.dart';
import '../../../core/components/app_input.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  SafeArea(
        child:  SingleChildScrollView(
          padding: EdgeInsets.all(8.0.r),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              AppInput(label: 'Search',isBourder: 25,),
              SizedBox(height: 13.h),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.network(
                    'https://tse1.mm.bing.net/th/id/OIP.kR2OWGKMJyYRyZJr_NSWrAHaD4?cb=12ucfimg=1&w=1200&h=630&rs=1&pid=ImgDetMain&o=7&rm=3',
                    fit: BoxFit.cover,
                    height: 320.h,
                    width: double.infinity,
                  ),
                  Container(
                    height: 151.h,
                    width: double.infinity,
                    color: Color(0xffE9DCD3).withValues(alpha: .5),
                  ),

                  SizedBox(height: 5.h),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4.0.r),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                '50% OFF DISCOUNT\nCUPON CODE : 125865',
                                style: TextStyle(
                                  color: Color(0xff62322D),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(width: 85.w),
                            SvgPicture.asset(
                              'assets/icons/offer.svg',
                              height: 60.h,
                              width: 60.w,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0.r),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/offer.svg',
                              height: 60.h,
                              width: 60.w,
                            ),
                            SizedBox(width: 120.w),
                            Expanded(
                              child: Text(
                                '50% OFF DISCOUNT\nCUPON CODE : 125865',
                                style: TextStyle(
                                  color: Color(0xff434C6D),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Top rated products',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff434C6D),
                  ),
                ),
              ),
              SizedBox(height: 14.h),
              Container(
                child: GridView.builder(
                  itemCount: 10,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 12,
                    childAspectRatio: 176 / 237,
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                  ),

                  itemBuilder: (context, index) => items(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

items() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      color: Color(0xffD9D9D9),
      boxShadow: [
        BoxShadow(
          blurRadius: 10.r,
          color: Color(0xff00000040).withValues(alpha: .25),
          offset: Offset(0, 1),
          blurStyle: BlurStyle.normal,
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.all(8.0.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                AppImage(
                  fit: BoxFit.cover,
                  height: 150.h,
                  width: double.infinity,
                  path:
                      'https://www.elfcosmetics.com/dw/image/v2/BBXC_PRD/on/demandware.static/-/Sites-elf-master/default/dwec39891d/2021/12142020_HydratingCore-LipShine_COMP_V2_IGF.jpg?sw=425&q=90',
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsetsDirectional.only(top: 6, end: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 35.h,
                    width: 35.w,

                    child: Center(
                      child: AppImage(
                        path: 'car_categores.svg',
                        height: 16.h,
                        width: 16.w,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.h),
          Expanded(
            child: Text(
              'Athe Red lipstick',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 11.h),
          Expanded(
            child: Text(
              '\$44.99',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
