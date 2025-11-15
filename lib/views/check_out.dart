import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/ui/app_image.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Color(0xff1010100D),
              radius: 10,
              child: AppImage(path: 'arrow_left.svg'),
            ),
          ),
          title: Center(
            child: Text(
              'Checkout',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xff434C6D),
              ),
            ),
          ),
          toolbarHeight: 71.h,
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff29D3DA).withValues(alpha: 0.11),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            ),
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(18.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery to',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff434C6D),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      height: 84.h,
                      width: 350.w,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppImage(path: 'map.png', height: 60.h, width: 100.w),
                          SizedBox(width: 10.w),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Home\n',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff434C6D),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Mansoura, 14 Porsaid St',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff8E8EA9),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 33.w),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: AppImage(
                                color: Color(0xffD75D72),
                                path: 'arrow_down.svg',
                                width: 22.w,
                                height: 22.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 50.h),
                  Text(
                    'Payment Method',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff434C6D),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      height: 57.h,
                      width: 350.w,
                      child: Padding(
                        padding: EdgeInsets.all(8.0.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppImage(
                              path: 'pay.svg',
                              height: 32.h,
                              width: 20.w,
                            ),
                            Spacer(),
                            Text('********'),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: AppImage(
                                color: Color(0xffD75D72),
                                path: 'arrow_down.svg',
                                width: 14.w,
                                height: 6.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),

                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      height: 57.h,
                      width: 350.w,
                      child: Padding(
                        padding: EdgeInsets.all(8.0.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppImage(
                              path: 'discount.svg',
                              height: 32.h,
                              width: 20.w,
                            ),
                            Spacer(),
                            Text(
                              'Add vaucher',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff434C6D),
                              ),
                            ),
                            Spacer(),
                            FilledButton(
                              onPressed: () {},
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Center(
                    child: Text(
                      '---' * 18,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    '- REVIEW PAYMENT',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff434C6D),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    'PAYMENT SUMMARY',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff434C6D),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff434C6D),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '16.100 EGP',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff434C6D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Text(
                        'SHIPPING FEES',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff434C6D),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'TO BE CALCULATED',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff434C6D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.h),
                  Divider(height: 0.2.h, color: Color(0xff73B9BB)),
                  SizedBox(height: 30.h),
                  Row(
                    children: [
                      Text(
                        'TOTAL + VAT',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff434C6D),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '16.100 EGP',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff434C6D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),

                  Center(
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        fixedSize: Size(230, 60),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 10.h,
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppImage(
                            path: 'my_cart.svg',
                            color: Colors.white,
                            height: 19.h,
                            width: 18.w,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'ORDER',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffDBF8F9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
