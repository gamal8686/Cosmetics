import 'package:flutter/material.dart';

final gotokey = GlobalKey<NavigatorState>();
Future<dynamic> goto(Widget page, {bool keepHestore = false, int? sacand}) {
  return Navigator.pushAndRemoveUntil(
    gotokey.currentContext!,
    MaterialPageRoute(builder: (context) => page),
    (route) => keepHestore,
  );
}
