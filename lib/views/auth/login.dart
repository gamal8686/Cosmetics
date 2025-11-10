
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/ui/app_Image.dart';
import '../../core/ui/app_filledbuttom.dart';
import '../../core/ui/app_inpot.dart';


class logenview extends StatefulWidget {
  const logenview({super.key});

  @override
  State<logenview> createState() => _logenviewState();
}

class _logenviewState extends State<logenview> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(13.r).copyWith(top: 48.r),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppImage(path: 'login.png', height: 227.h, width: 284.w),
                SizedBox(height: 25.h),
                Center(
                  child: Text(
                    'Login Now',
                    style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 14.h),

                Center(
                  child: Text(
                    'Please enter the details below to continue',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                AppInpot(drobDowen: true, labol: 'Phone Number',),
                AppInpot(labol: 'Your Password',path: 'Vectoron.svg',ispassword: true,),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 42.h),

                AppFieldButtom(text: 'Login', onPressed: () {}),
                SizedBox(height: 42.h),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  Text('Have an account?',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400),)
              , TextButton(onPressed: () {
                 
               }, child: Text('Login',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600)),)
                ],)

              ],
            ),
          ),
        ),
      ),
    );
  }
}

