import 'package:amar_bakr/core/app/app_Image.dart';
import 'package:amar_bakr/core/app/app_filledbuttom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenDialog extends StatelessWidget {
  const ScreenDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [Container(
        margin: EdgeInsetsDirectional.all(15),
        child: Column(
      
          children: [
            AppImage(path: 'success.svg'),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Password Created!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                'Congratulations! Your password\n has been successfully created',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 26,),

                 AppFieldButtom(onPressed: () {

                },text: 'Return to login',width: 270,),

          ],
        ),
      )]
      // children: [
      //   AppImage(path: 'success.svg'),
      //   Text(
      //     'Password Created!',
      //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      //     textAlign: TextAlign.center,
      //   ),
      //   SizedBox(height: 5,),
      //   Text(
      //     'Congratulations! Your password\n has been successfully created',
      //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      //     textAlign: TextAlign.center,
      //   ),
      //   SizedBox(height: 26,),
      //
      //      AppFieldButtom(onPressed: () {
      //
      //     },text: 'Return to login',width: 270,),
      //
      //
      // ],
    );
  }
}
