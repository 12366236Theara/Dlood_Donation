import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/Screen/oTP_Screen/oTP_Screen.dart';
import 'package:kilo_health/const/const_BASEURL.dart';
import 'package:kilo_health/model/model_forgotPassword.dart';
import 'package:http/http.dart' as http;

class ServiceForgotpassword {
  Future<ModelForgotPassword> serviceForgot(
      String phone, String password, String confirmpassword) async {
    print('==================password $password');
    try {
      phone = _formphone(phone);
      print('Formatted Phone: $phone');

      final response = await http.post(
        Uri.parse(ConstBaseurl.BASEURL_FORGOTPASSWORD),
        body: jsonEncode({'phone': phone}),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      if (response.statusCode == 200) {
        var result = ModelForgotPassword.fromJson(jsonDecode(response.body));
        Get.to(
          OtpScreen(
            phone: phone,
            confirmpassword: confirmpassword,
            password: password,
          ),
        );

        Get.snackbar(
          "oTP",
          result.otp.toString(),
          colorText: Colors.white,
          backgroundColor: Colors.blue,
          duration: const Duration(seconds: 10),
        );
        Get.snackbar(
          "Success",
          result.message ?? 'No message',
          colorText: Colors.white,
          backgroundColor: Colors.blue,
        );
        return result;
      } else {
        final errorData = jsonDecode(response.body);
        if (errorData is Map) {
          errorData.forEach((field, message) {
            Get.snackbar(
              '$field : ',
              message.toString(),
              backgroundColor: Colors.red,
              colorText: Colors.white,
            );
          });
        } else {
          Get.snackbar(
            "Error",
            "An unexpected error occurred.",
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
        return ModelForgotPassword.fromJson(errorData);
      }
    } catch (e) {
      print('Error =================${e.toString()}');
      rethrow;
    }
  }

  String _formphone(String phone) {
    if (!phone.startsWith('+855')) {
      if (phone.startsWith('0')) {
        return '+855${phone.substring(1)}'; // Replace '0' with '+855'
      }
      return '+855$phone'; // Add '+855' prefix
    }
    return phone; // Return as-is if it already starts with '+855'
  }
}
