import 'package:flutter/cupertino.dart';

import '../../../core/logic/dio_helper.dart';
import '../../../core/logic/helper_methods.dart';

class CollectionOtp{
  final formKey=GlobalKey<FormState>();
  final controller =TextEditingController();
  Future<void> sendData()async{

    final resp=await DioHelper.sendData(pass: '/api/Auth/verify-otp',data: {
      "countryCode": "+20",
      ///todo i need the countrycode

      "phoneNumber": "1234567890",
      ///todo i need the phone number
      "otpCode":controller.text.trim()
    });
    if (resp.isSuccess) {
      showMessage(resp.mag);
    } else {
      showMessage(resp.mag, isError: true);
    }
  }
}