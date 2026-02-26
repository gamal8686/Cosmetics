import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/logic/dio_helper.dart';
import '../../../core/logic/helper_methods.dart';

class CreatePasswordCubit extends Cubit<DataState> {
  final formKey = GlobalKey<FormState>();
  final newPassword = TextEditingController();
  final confirmPassword = TextEditingController();

  CreatePasswordCubit() : super(DataState.init);

  Future<void> sendData() async {
    emit(DataState.loading);
    try {
      final resp = await DioHelper.sendData(
        pass: '/api/Auth/reset-password',
        data: {
          "newPassword": newPassword.text.trim(),
          "confirmPassword": confirmPassword.text.trim(),
        },
      );
      if (resp.isSuccess) {
        showMessage(resp.mag);
        emit(DataState.success);
      } else {
        emit(DataState.failed);
        showMessage(resp.mag, isError: true);

      }
    } on DioException catch (e) {
      emit(DataState.failed);
      showMessage(e.response?.data['message'] ?? 'Error');
    }
  }
  bool isLoadingConfirm(){
 return  state==DataState.loading;
  }
}
