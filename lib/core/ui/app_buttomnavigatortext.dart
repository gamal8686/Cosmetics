import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButtomNavigatorTest extends StatelessWidget {
  final String text;
  final String textButtom;


  const AppButtomNavigatorTest({super.key, required this.text, required this.textButtom});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
        TextButton(onPressed: () {},child: Text(textButtom,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500),),),
      ],
    );
  }
}
