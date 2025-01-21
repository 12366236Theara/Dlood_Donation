import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/Screen/main_Sreen/main_Sreen.dart';
import 'package:kilo_health/const/const_Massage.dart';
import 'package:kilo_health/model_fake/model_loginRepos.dart';
import 'package:kilo_health/repositories/userRepositories.dart';

import 'package:kilo_health/services/service_login.dart';


class LoginController extends GetxController {
  final LoginService _loginService = LoginService();
  final UserRepositories _reposery;
  var isLoading = false.obs;

  LoginController(this._reposery);
  Future<void> login(
    String phone,
    String password,
    String token,
  ) async {
    isLoading.value = true;
    if (phone.length > 15) {
      Get.snackbar(
          backgroundColor: Colors.red, "Error Phone", "Phone is too long");
    }
    if (phone.length < 10) {
      Get.snackbar(
          backgroundColor: Colors.red, "Error Phone", "Phone is too short");
    }
    if (password.length < 4) {
      Get.snackbar(
          backgroundColor: Colors.red,
          "Error Password",
          'Password is too short');
    }

    try {
      phone = _loginService.formatPhoneNumber(phone);
      // Call the service to login
      ModelLoginrepos body = ModelLoginrepos(phone: phone, password: password , );
      
      print("--------------------------$body");
      final loginResponse = await _reposery.login(body);
      

      // final loginResponse = await _loginService.loginPost(phone, password);
      if (loginResponse.message == 'Login successful') {
       

        Get.off(const MainSreen(indexviewPage: 0));
        Get.snackbar(
          ConstMassage.massageAccess,
          "${loginResponse.message}",
          backgroundColor: Colors.blue,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (error) {
      Get.snackbar(
        "Login Failed",
        error.toString(),
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
