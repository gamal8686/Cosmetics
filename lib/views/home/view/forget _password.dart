import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/app/app_Image.dart';
import '../../../core/app/app_buttomnavigatortext.dart';
import '../../../core/app/app_filledbuttom.dart';
import '../../../core/app/app_inpot.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                'Forget Password',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 50),
              Align(
                  alignment: Alignment.center,
                  child: Text('Please enter your phone number below\n to recovery your password.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),))
           , SizedBox(height: 40),


              AppInpot(labol: 'Phone Number', drobDowen: true),

              SizedBox(height: 55),
              Center(
                child: AppFieldButtom(
                    width: 270,
                    onPressed: () {}, text: 'Next'),
              ), SizedBox(height: 80),



            ],
          ),
        ),
      ),
    ); ;
  }
}
