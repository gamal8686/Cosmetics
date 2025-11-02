import 'package:amar_bakr/core/app/app_Image.dart';
import 'package:amar_bakr/core/app/app_filledbuttom.dart';
import 'package:amar_bakr/core/app/app_inpot.dart';
import 'package:amar_bakr/core/app/app_formfield.dart';
import 'package:amar_bakr/core/helper/goto.dart';
import 'package:flutter/material.dart';

import 'create_account.dart';
import 'on_bordenge.dart';

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
          padding: const EdgeInsets.all(13).copyWith(top: 48),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppImage(path: 'login.png', height: 227, width: 284),
                SizedBox(height: 25),
                Center(
                  child: Text(
                    'Login Now',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 14),

                Center(
                  child: Text(
                    'Please enter the details below to continue',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                AppInpot(drobDowen: true, labol: 'Phone Number',),
                AppInpot(labol: 'Your Password',path: 'Vectoron.svg',ispassword: true,),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 42),

                AppFieldButtom(text: 'Login', onPressed: () {}),
                SizedBox(height: 42),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  Text('Have an account?',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
              , TextButton(onPressed: () {
                 
               }, child: Text('Login',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600)),)
                ],)

              ],
            ),
          ),
        ),
      ),
    );
  }
}

