import 'package:amar_bakr/core/components/app_image.dart';
import 'package:amar_bakr/core/logic/helper_methods.dart';
import 'package:amar_bakr/views/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/components/app_buttom.dart';
import '../home/pages/home_page.dart';
import '../home/views_page.dart';



class AccountActivatedDailog extends StatefulWidget {
  final bool isFromCreateAccount;

  const AccountActivatedDailog({super.key,  this.isFromCreateAccount=false});

  @override
  State<AccountActivatedDailog> createState() => _AccountActivatedDailogState();
}

class _AccountActivatedDailogState extends State<AccountActivatedDailog> {
  @override
  Widget build(BuildContext context) {
    return
     SimpleDialog(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(15.r),
       ),
        children: [
          Container(
            margin: EdgeInsetsDirectional.all(15.r),
            child: Column(
              children: [
        AppImage(path: 'SuccessCheck.json',height: 100.h,width: 100.w,),

                // SvgPicture.asset(
                //   'assets/lotties/SuccessCheck.json',
                //   height: 150.h,
                // ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Text(
                    widget.isFromCreateAccount?
                    'Account Activated!':'Password Created!',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  widget.isFromCreateAccount?
                  'Congratulations! Your account\n has been successfully activated':'Congratulations! Your password has been successfully created',
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 26.h),

                AppFieldButtom(
                  onPressed: () {
                    Navigator.pop(context);
                    goTo( widget.isFromCreateAccount?ViewHome():LoginView(),canPop: false);

                  },
                  text:  widget.isFromCreateAccount?'Go to home':'Return to login',
                  width: 270.w,
                ),
              ],
            ),
          ),
        ],

    );
  }
}
