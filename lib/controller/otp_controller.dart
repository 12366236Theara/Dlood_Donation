import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';

import 'package:kilo_health/const/const_BASEURL.dart';
import 'package:kilo_health/const/const_Massage.dart';
import 'package:kilo_health/model/model_verify.dart';

class OtpController extends GetxController {
  var isLoading = false.obs;
  final model_otp = Model_OTP().obs;

  Timer? retryTimer;

  Future<void> Otpverify(String phone, String otp, BuildContext context) async {
    isLoading.value = true;
    try {
      final response = await http.post(
        Uri.parse(ConstBaseurl.BASEURL_OTP),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"phone": phone, "otp": otp}),
      );

      if (response.statusCode == 201) {
        var result = jsonDecode(response.body);

        Get.snackbar(ConstMassage.success, ConstMassage.otpsucces);
        print("------------------------------------------SSuccess$result");

        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const SigninSignup()),
          (route) => false,
        );
      } else {
        var result = jsonDecode(response.body);

        Get.snackbar(
          ConstMassage.error,
          result['error'],
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      Get.snackbar("Error", "An error occurred: $e");
      print("Error: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
