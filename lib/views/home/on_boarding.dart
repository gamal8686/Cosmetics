import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/logic/helper_methods.dart';
import '../../core/ui/app_Image.dart';
import '../auth/login.dart';

class OnBoardingview extends StatefulWidget {
  const OnBoardingview({super.key});

  @override
  State<OnBoardingview> createState() => _onpordengviewState();
}

class _onpordengviewState extends State<OnBoardingview> {
  int counter = 0;
  List image = ['on_boarding1.png', 'on_boarding2.png', 'on_boarding3.png'];
  List Descrbshen = ['WELCOME', 'SEARCH & PICK', 'PUCH NOTIFICATIONS '];
  List Test = [
    'Makeup has the power to transform your mood and empowers you to be a more confident person.',
    'We have dedicated set of products and routines hand picked for every skin type.',
    'Allow notifications for new makeup & cosmetics offers.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(horizontal: 37.w, vertical: 18.h),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppImage(path: image[counter]),
              SizedBox(height: 25.h),
              Text(
                Descrbshen[counter],
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25.h),

              Text(Test[counter], style: TextStyle(fontSize: 16.sp)),
              SizedBox(height: 30.h),

              counter == 2
                  ? FilledButton(
                      style: FilledButton.styleFrom(fixedSize: Size(350, 60)),
                      onPressed: () {
                        goto(logenview());
                      },
                      child: AppImage(path: 'arrow_right.svg'),
                    )
                  :
              FloatingActionButton(
                      backgroundColor: Color(0xff434C6D),
                      onPressed: () {
                        if (counter < 2) {
                          counter++;
                          setState(() {});
                        } else {
                          goto(logenview());
                        }
                      },
                      child: AppImage(path: 'arrow_right.svg'),
                    )

            ],
          ),
        ),
      ),
    );
  }
}
