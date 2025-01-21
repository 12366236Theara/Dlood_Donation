import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:http/http.dart' as http;
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';
import 'package:kilo_health/const/const_BASEURL.dart';

class ServiceOtpverification {
  Future<void> ServiceOtp(
      String phone, String password, String confirmpassword, otp) async {
    try {
      phone = _formphone(phone);
      final response =
          await http.post(Uri.parse(ConstBaseurl.BASEURL_VERIFICATION),
              body: jsonEncode({
                "phone": phone,
                "otp": otp,
                "new_password": password,
                "confirm_password": confirmpassword,
              }),
              headers: {
            'Content-Type': 'application/json',
          });
      if (response.statusCode == 200) {
        Get.to(const SigninSignup());
      }
      print("===================rrrr===$phone $password $confirmpassword $otp");
    } catch (e) {
      print("Service E ${e.toString()}");
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
