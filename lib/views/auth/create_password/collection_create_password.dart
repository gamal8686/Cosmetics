import 'package:flutter/cupertino.dart';

import '../../../core/logic/dio_helper.dart';
import '../../../core/logic/helper_methods.dart';

class CollectionCreatePassword{



  final formKey = GlobalKey<FormState>();
  final newPassword = TextEditingController();
  final confirmPassword = TextEditingController();

  Future<void> sendData() async {
    final resp = await DioHelper.sendData(
      pass: '/api/Auth/reset-password',
      data: {
        "newPassword": newPassword.text.trim(),
        "confirmPassword": confirmPassword.text.trim(),
      },
    );
    if (resp.isSuccess) {
      showMessage(resp.mag);
    } else {
      showMessage(resp.mag, isError: true);
    }
  }


}