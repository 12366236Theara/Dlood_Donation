import 'package:get/get.dart';
import 'package:kilo_health/services/service_forgotpassword.dart';

class ForgotpasswordController extends GetxController {
  var isLooding = false.obs;
  Future<void> postContronller(
      {required String phone,
      required String password,
      required String confirmpassword}) async {
    isLooding(true);
    final ServiceForgotpassword servoce = ServiceForgotpassword();
    try {
      phone = _formphone(phone);
      final result =
          await servoce.serviceForgot(phone, password, confirmpassword);

      print(
          ' phone====================tt========================= ${result.toJson()}');
    } catch (e) {
      print("Error: ===========ff==========${e.toString()}");
    }
  }

  String _formphone(String phone) {
    if (!phone.startsWith('+855')) {
      if (phone.startsWith('0')) {
        return phone.replaceFirst('+855', '0');
      }
      return '+855$phone';
    }
    return phone;
  }
}
