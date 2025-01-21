import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/Screen/OTPverification_Screen/oTPverification.dart';
import 'package:kilo_health/model_fake/model_SigupResponse.dart';
import 'package:kilo_health/repositories/userRepositories.dart';

class SignUpController extends GetxController {
  var isLoading = false.obs;
  late final UserRepositories _userRepositories;

  SignUpController(this._userRepositories);
  // @override
  // void onInit() {
  //   _userRepositories = Get.find<UserRepositories>();
  //   super.onInit();
  // }

  Future<void> registerUser(
    String phone,
    String firstName,
    String lastName,
    String password,
    String confirmPassword,
  ) async {
    // Validate fields
    // if (phone.isEmpty ||
    //     firstName.isEmpty ||
    //     lastName.isEmpty ||
    //     password.isEmpty ||
    //     confirmPassword.isEmpty) {
    //   Get.snackbar(
    //     "Error",
    //     "All fields are required.",
    //     snackPosition: SnackPosition.BOTTOM,
    //     backgroundColor: Colors.red,
    //     colorText: Colors.white,
    //   );
    //   return;
    // }
    if (password != confirmPassword) {
      Get.snackbar(
        "Error",
        "Passwords do not match.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }
    isLoading.value = true;

    try {
      final phones = _formatPhone(phone);
      final modelfake = ModelSigupresponse(
          firstName, lastName, confirmPassword, phones, password);
      final response = await _userRepositories.signUp(modelfake);
      print("===============================$phone");

      // Navigate to OTP verification screen
      Get.to(() => Otpverification(phone: phone));

      // Show success message
      Get.snackbar(
        "OTP Verification",
        "OTP sent successfully: ${response.otp}",
        duration: const Duration(seconds: 10),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } catch (e) {
      
      // Handle errors
      if (e is Map<String, dynamic>) {
        e.forEach((field, messages) {
          if (messages is List) {
            for (String message in messages) {
              Get.snackbar(
                "$field:",
                message,
                backgroundColor: Colors.red,
                colorText: Colors.white,
              );
            }
          } else {
            // Get.snackbar(
            //   "$field:",
            //   messages.toString(),
            //   backgroundColor: Colors.red,
            //   colorText: Colors.white,
            // );
          }
        });
      } else {
        Get.snackbar(
          "Error",
          e.toString(),
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } finally {
      isLoading.value = false;
    }
  }

  String _formatPhone(String phone) {
    if (!phone.startsWith('+855')) {
      if (phone.startsWith('0')) {
        return phone.replaceFirst('0', '+855');
      }
      return '+855$phone';
    }
    return phone;
  }
}
