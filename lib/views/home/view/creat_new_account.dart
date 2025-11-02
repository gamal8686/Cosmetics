import 'package:amar_bakr/core/helper/goto.dart';
import 'package:amar_bakr/views/home/view/screen_dailog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/app/app_Image.dart';
import '../../../core/app/app_buttomnavigatortext.dart';
import '../../../core/app/app_filledbuttom.dart';
import '../../../core/app/app_inpot.dart';

class CreatNewAccount extends StatelessWidget {
  const CreatNewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.only(top: 40),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppImage(path: 'splash.png', height: 65, width: 65),
              SizedBox(height: 40),
              Text(
                'Create Account',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'The password should have at least\n 6 characters.',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 80),

              AppInpot(labol: 'New password', ispassword: true),
              AppInpot(labol: 'Confirm password', ispassword: true),
              SizedBox(height: 72),
              Center(
                child: AppFieldButtom(
                  width: 270,
                  onPressed: () {
                   showDialog(context: context, builder:(context) =>  ScreenDialog(),);
                  },
                  text: 'Confirm',
                ),
              ),
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: AppButtomNavigatorTest(
                  text: 'Have an account?',
                  textButtom: 'Login',
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
