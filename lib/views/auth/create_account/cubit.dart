import 'package:cosmetics/views/auth/otp/cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/logic/dio_helper.dart';
import '../../../core/logic/helper_methods.dart';
import '../../../core/logic/shared_preferences.dart';
import '../login/model.dart';
import '../otp/view.dart';

class CreateAccountCubit extends Cubit<DataState> {
  String? onSelectedCountryCode;
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController(text: 'Gamal1');
  final email = TextEditingController(text: 'man1207478@gmail.com');
  final number = TextEditingController(text: '01012345678');
  final password = TextEditingController(text: '01065953330');
  final newPassword = TextEditingController(text: '01065953330');

  CreateAccountCubit() : super(DataState.init);

  Future<void> sentData() async {
    emit(DataState.loading);
    try {
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

      if (resp.isSuccess) {
        final model = User.fromJson(resp.data!);
        CashHelper.saveUserData(model);
        emit(DataState.success);
        goTo(
          BlocProvider(
            create: (context) => OtpCubit(
              isFromCreateAccount: true,
              countryCodeOtp: onSelectedCountryCode ?? '+20',
              phoneNumberOtp: number.text.trim(),
            ),
            child: VerifyCode(
              countryCode: onSelectedCountryCode ?? '+20',
              isFromCreateAccount: true,
              phoneNumber: number.text.trim(),
            ),
          ),
        );
      } else {
        emit(DataState.failed);
        showMessage(resp.data?['message'], isError: true);
      }
    } on DioException catch (e) {
      emit(DataState.failed);
      showMessage(e.response?.data['message'], isError: true);
    }
  }

  void onSelectedCountryCodeCreateAccount(value) =>
      onSelectedCountryCode = value;

  void onPressedCreateAccount() {
    if (formKey.currentState!.validate()) {
      sentData();
    }
  }

  bool isLoadingCreateAccount() => state == DataState.loading;
}
