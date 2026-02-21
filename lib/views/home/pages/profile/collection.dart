import '../../../../core/logic/dio_helper.dart';
import '../../../../core/logic/helper_methods.dart';
import '../../../../core/logic/shared_preferences.dart';
import '../../../auth/login/view.dart';

class CollectionProfile {
  Future<void> logOut() async {
    final resp = await DioHelper.sendData(pass: '/api/Auth/logout');
    if (resp.isSuccess) {
      CashHelper.logeOut();
      goTo(LoginView(), canPop: false);
    } else {
      showMessage('Something Wrong', isError: true);
    }
  }
}
