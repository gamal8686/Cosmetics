
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../views/auth/create_account.dart';
import '../../views/auth/login.dart';
import '../logic/helper_methods.dart';

class AppLoginOrRegister extends StatelessWidget {
  final bool isLogin;

  const AppLoginOrRegister({super.key, this.isLogin = true});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
              text: isLogin ? "Don’t have an account?" : "Have an account?",
              style: TextStyle(
                color: Color(0xff434C6D),
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: TextButton(
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.symmetric(horizontal: 2),
                ),
                child: Text(
                  isLogin ? "Register" : "Login",
                  style: TextStyle(
                    color: Color(0xffD75D72),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                onPressed: () {
                  if (isLogin) {
                    goTo(CreateAccount());


                  } else {
                    goTo(LoginView());

                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

