import 'package:cosmetics/views/auth/login/view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/logic/dio_helper.dart';
import '../../../core/logic/helper_methods.dart';


class OtpCubit extends Cubit<DataState> {
  final String countryCodeOtp;
  final String phoneNumberOtp;

  final bool isFromCreateAccount;
  final formKey = GlobalKey<FormState>();
  final controller = TextEditingController();

  OtpCubit({this.isFromCreateAccount=false, required this.countryCodeOtp, required this.phoneNumberOtp})
    : super(DataState.init);

  Future<void> sendData() async {
    emit(DataState.loading);
    try {
      final resp = await DioHelper.sendData(
        pass: '/api/Auth/verify-otp',
        data: {
          "countryCode": countryCodeOtp,

          "phoneNumber": phoneNumberOtp,

          "otpCode": controller.text.trim(),
        },
      );
      if (resp.isSuccess) {
        emit(DataState.success);

        showMessage(resp.mag);
        goTo(LoginView());
      } else {
        emit(DataState.failed);

        showMessage(resp.mag, isError: true);
      }
    } on DioException catch (e) {
      emit(DataState.failed);

      showMessage(e.response?.data['message'] ?? 'Error', isError: true);
    }

  }
  bool isLoadingDone(){
    return  state==DataState.loading;
  }


}
