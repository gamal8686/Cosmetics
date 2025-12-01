import 'dart:async';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

final navKey = GlobalKey<NavigatorState>();
 goTo(Widget page, {bool canPop = false, int? delayDuration}) {
 void action(){ Navigator.pushAndRemoveUntil(
    navKey.currentContext!,
    MaterialPageRoute(builder: (context) => page),
    (route) => canPop);}
 if (delayDuration != null) {
   Timer(Duration(seconds: delayDuration), () {
     action();
   });
 } else {
   action();
 }

}



Future<dynamic> showMassiage(String text){
  return
    FlutterClipboard.copy(text).then((value) {
      ScaffoldMessenger.of( navKey.currentContext!).showSnackBar(SnackBar(
          elevation: 50,
          backgroundColor: Colors.green,
          duration: Duration(seconds: 3,),
          content: Text('Copy ya Gemy')));
    });
}