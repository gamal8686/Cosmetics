import 'package:flutter/cupertino.dart';

import '../../../core/logic/dio_helper.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../core/logic/shared_preferences.dart';
import '../login/model.dart';
import '../login/view.dart';

class CollectionCreateAccount{
  String? onSelectedCountryCode;
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController(text: 'Gamal1');
  final email = TextEditingController(text: 'man1207478@gmail.com');
  final number = TextEditingController(text: '01012345678');
  final password = TextEditingController(text: '01065953330');
  final newPassword = TextEditingController(text: '01065953330');

  Future<void> sentData() async {
    final resp = await DioHelper.sendData(
      pass: '/api/Auth/register',
      data: {
        "username": name.text.trim(),
        "countryCode": onSelectedCountryCode ?? '+20',
        "phoneNumber": number.text.trim(),
        "email": email.text.trim(),
        "password": password.text.trim(),
      },
    );

    if (resp.data != null) {
      final model = User.fromJson(resp.data!);
      CashHelper.saveUserData(model);

      goTo(LoginView());
    } else {
      showMessage(resp.data?['massage'], isError: true);
    }
  }
}