import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/ui/app_Image.dart';

class MyCardPage extends StatelessWidget {
  const MyCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'My Cart',
              style: TextStyle(
                color: Color(0xff434C6D),
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          actions: [
            Padding(
              padding:  EdgeInsets.all(10.0.r),
              child: AppImage(path: 'cart_on_category.svg'),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24.h),
              Padding(
                padding:  EdgeInsets.all(5.0.r),
                child: Column(
                  children: [
                    SizedBox(height: 8.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'You have 4 products in your cart',
                        style: TextStyle(
                          color: Color(0xff434C6D).withValues(alpha: .55),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),

              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    Padding(padding:  EdgeInsets.all(10.r), child: _items()),
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

class _items extends StatefulWidget {
  const _items();

  @override
  State<_items> createState() => _itemsState();
}

class _itemsState extends State<_items> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8),
              child: AppImage(
                fit: BoxFit.cover,
                height: 130.h,
                width: 120.w,
                path:
                    'https://www.instyle.com/thmb/rLPYCp3POuu06E6t2k_vXQt-MpA=/fit-in/1500x1000/filters:no_upscale():max_bytes(150000):strip_icc()/rare-beauty-by-selena-gomez-brow-harmony-flexible-lifting-5e251db69f69400eb8f67f9dcdb72630.jpg',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6,left: 6),
              child: AppImage(path: 'delete.svg',height: 20.h,width:
                20.w,),
            ),
          ],
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3B4569),
                ),
                TextSpan(
                  children: [
                    TextSpan(text: 'Note Cosmetics\n'),
                    TextSpan(
                      text: 'Ultra rich mascara for lashes\n\n',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3B4569).withValues(alpha: .73),
                      ),
                    ),
                    TextSpan(text: '350 EGP\n'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50.r),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff8E8EA9)),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {
                        counter--;
                        setState(() {});
                      },
                      child: AppImage(path: 'minus.svg'),
                    ),
                    TextButton(onPressed: () {}, child: Text('$counter')),
                    TextButton(
                      onPressed: () {
                        counter++;
                        setState(() {});
                      },
                      child: AppImage(path: 'plus.svg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
