import 'package:cosmetics/core/logic/helper_methods.dart';
import 'package:cosmetics/core/logic/shared_preferences.dart';
import 'package:cosmetics/views/auth/create_account.dart';
import 'package:cosmetics/views/auth/login/model.dart';
import 'package:cosmetics/views/home/home_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/logic/dio_helper.dart';

class Collection {
  String? onSelectCountryCode;

  final phoneController = TextEditingController(text: '010123456789');

  final passwordController = TextEditingController(text: '123456789');

  final formKey = GlobalKey<FormState>();
  DataState? state;

  Future<void> sendData() async {
    final phone = phoneController.text.trim();
    final password = passwordController.text.trim();

    final resp = await DioHelper.sendData(
      pass: '/api/Auth/login',
      data: {
        "countryCode": onSelectCountryCode ?? '+20',
        "phoneNumber": phone,
        "password": password,
      },
    );

    if (resp.data != null) {
      final model = User.fromJson(resp.data!);
      CashHelper.saveUserData(model);
      goTo(HomeView());
    }else{
      showMessage('pleas create New Password',isError: true);
      goTo(CreateAccount());

      print(resp.data?['massage']);
    }
  }
}
