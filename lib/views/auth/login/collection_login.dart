import 'package:cosmetics/core/logic/helper_methods.dart';
import 'package:cosmetics/core/logic/shared_preferences.dart';
import 'package:cosmetics/views/auth/create_account/view.dart';
import 'package:cosmetics/views/auth/login/model.dart';
import 'package:cosmetics/views/home/home_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/logic/dio_helper.dart';

class CollectionCubit extends Cubit<DataState> {
  String? onSelectCountryCode;

  final phoneController = TextEditingController(text: '010123456789');

  final passwordController = TextEditingController(text: '123456789');

  final formKey = GlobalKey<FormState>();


  CollectionCubit() : super(DataState.init);

  Future<void> sendData() async {
    emit(DataState.loading);
    final phone = phoneController.text.trim();
    final password = passwordController.text.trim();

    try {
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
        emit(DataState.success);
        goTo(HomeView());
      } else {
        emit(DataState.failed);
        showMessage('pleas create New Password', isError: true);
        goTo(CreateAccount());
      }
    } on DioException catch (e) {
      emit(DataState.failed);
      showMessage(e.response?.data['message'] ?? 'error server');
    }
  }

  void onSelectedCountryCode(value) {
    onSelectCountryCode = value;
  }

  void onPressedLogin() {
    if (formKey.currentState!.validate()) {
      sendData();
    }
  }
}
