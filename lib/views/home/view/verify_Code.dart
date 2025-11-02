import 'package:amar_bakr/core/app/app_Image.dart';
import 'package:amar_bakr/core/app/app_buttomnavigatortext.dart';
import 'package:amar_bakr/core/app/app_filledbuttom.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 40),
                  child: AppImage(path: 'splash.png', height: 65, width: 65),
                ),
                SizedBox(height: 40),
                Text(
                  'Verify Code',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 40),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff8E8EA9),
                    ),
                    children: [
                      TextSpan(
                        text: 'We just sent a 4-digit verification code to\n',
                      ),
                      TextSpan(
                        text: '+20 1022658997.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: 'Enter the code in the box\n'),
                      TextSpan(text: 'below to continue.'),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Edit the number'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: PinCodeTextField(
                    keyboardType: TextInputType.number,

                    appContext: context,
                    cursorColor:Theme.of(context).primaryColor,

                    length: 4,
                    backgroundColor: Theme.of(
                      context,
                    ).primaryColor.withValues(alpha: 0.040),
                    pinTheme: PinTheme(
                        inactiveFillColor:Theme.of(context).primaryColor,


                      selectedColor: Color(0xffD75D72),
                      activeColor: Color(0xffD75D72),
                      inactiveColor: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(8),

                      fieldWidth: 45,
                      fieldHeight: 45,
                      shape: PinCodeFieldShape.box,
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    AppButtomNavigatorTest(
                      text: 'Didn’t receive a code?',
                      textButtom: 'Resend',
                    ),
                    Spacer(),
                    TextButton(onPressed: () {

                    }, child: Text('0:36'))
                  ],
                ),
                SizedBox(height: 116,),
                AppFieldButtom(
                  width: 270,

                  text: 'Done', onPressed: () {

                },)

              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Scaffold(
// body: ListView(
// padding: EdgeInsets.all(13),
// children: [
// SizedBox(height: 90),
// AppImage(path: 'splash.png', height: 65, width: 65),
// SizedBox(height: 40),
// Align(
// alignment: Alignment.center,
// child: Text(
// 'Verify Code',
// style: TextStyle(
// fontSize: 24,
// fontWeight: FontWeight.w700,
// color: Color(0xff434C6D),
// ),
// ),
// ),
// SizedBox(height: 40),
// RichText(
// textAlign: TextAlign.center,
// text: TextSpan(
// style: TextStyle(
// fontWeight: FontWeight.w400,
// fontSize: 14,
// color: Color(0xff8E8EA9),
// ),
// children: [
// TextSpan(text: 'We just sent a 4-digit verification code to\n'),
// TextSpan(
// text: '+20 1022658997.',
// style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
// ),
// TextSpan(text: 'Enter the code in the box\n'),
// TextSpan(text: 'below to continue.'),
// ],
// ),
// ),
// SizedBox(height: 40),
// Text(
// 'Edit the number',
// style: TextStyle(
// fontSize: 12,
// fontWeight: FontWeight.w600,
// color: Color(0xffD75D72),
// ),
// ),
// SizedBox(height: 20),
// PinCodeTextField(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// keyboardType: TextInputType.number,
// pinTheme: PinTheme(
// borderRadius: BorderRadius.circular(8),
// shape: PinCodeFieldShape.box,
// activeFillColor: Theme.of(context).primaryColor.withValues(alpha: 0.40),
// activeColor: Color(0xffD75D72),
// inactiveColor: Color(0x8989925C).withValues(alpha: 0.36),
// selectedColor: Color(0xffD75D72),
// ),
// backgroundColor: Colors.transparent,
// enableActiveFill: false,
// appContext: context,
// length: 4,
// ),
// SizedBox(height: 40),
// RichText(
// textAlign: TextAlign.left,
// text: TextSpan(
// children: [
// TextSpan(text: 'Didn’t receive a code? ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500, color: Color(0xff434C6D).withValues(alpha: 0.54)),),
// TextSpan(
// text: 'Resend',
// style: TextStyle(color: Color(0xffD75D72).withValues(alpha: 0.54)),
// ),
// WidgetSpan(child: SizedBox(width: 150,)),
// TextSpan(text: '0:36',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500, color: Color(0xff434C6D).withValues(alpha: 0.54)),)
// ],
// ),
// ),
// SizedBox(height: 116),
// Center(
// child: FilledButton(
//
// onPressed: () {
//
// }, child:Text('Done')),
// )
// ],
// ),
// );
