import 'package:amar_bakr/core/app/app_Image.dart';
import 'package:amar_bakr/core/app/app_buttomnavigatortext.dart';
import 'package:amar_bakr/core/app/app_filledbuttom.dart';
import 'package:amar_bakr/core/app/app_inpot.dart';
import 'package:amar_bakr/core/app/app_formfield.dart';
import 'package:amar_bakr/core/helper/goto.dart';
import 'package:flutter/material.dart';

import 'verify_Code.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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

              AppInpot(labol: 'Your Name'),
              AppInpot(labol: 'Phone Number', drobDowen: true),
              AppInpot(labol: 'Create your password',ispassword: true,),
              AppInpot(labol: 'Confirm password',ispassword: true,),
              SizedBox(height: 90),
              Center(
                child: AppFieldButtom(
                    width: 270,
                    onPressed: () {}, text: 'Next'),
              ), SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: AppButtomNavigatorTest(text: 'Have an account?',textButtom: 'Login',),
              )


            ],
          ),
        ),
      ),
    );
  }
}

