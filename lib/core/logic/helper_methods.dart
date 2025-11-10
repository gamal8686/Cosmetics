import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

final gotokey = GlobalKey<NavigatorState>();
Future<dynamic> goto(Widget page, {bool keepHestore = false, int? sacand}) {
  return Navigator.pushAndRemoveUntil(
    gotokey.currentContext!,
    MaterialPageRoute(builder: (context) => page),
    (route) => keepHestore,
  );
}



Future<dynamic> showmassiage(String text){
  return
    FlutterClipboard.copy(text).then((value) {
      ScaffoldMessenger.of( gotokey.currentContext!).showSnackBar(SnackBar(
          elevation: 50,
          backgroundColor: Colors.green,
          duration: Duration(seconds: 3,),
          content: Text('Copy ya Gemy')));
    });
}