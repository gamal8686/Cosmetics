import 'package:flutter/material.dart';

class AppFieldButtom extends StatelessWidget {
  final String text;
  final double? width;
final void Function() onPressed;


  const AppFieldButtom({super.key,required this.text,required  this.onPressed, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      child: FilledButton(

          onPressed:onPressed, child: Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
    );
  }
}
