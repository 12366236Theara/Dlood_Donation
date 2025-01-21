import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kilo_health/Screen/splas_Sreen/splas_Sreen.dart';
import 'package:kilo_health/controller/darkMode_controller.dart';

import 'package:kilo_health/repositories/fakeData_UserRepositoriesImpl.dart';
import 'package:kilo_health/repositories/userRepositories.dart';
import 'package:kilo_health/repositories/userRepositories_Impl.dart';
import 'package:kilo_health/services/service.dart';
import 'package:kilo_health/services/service_Getrequest.dart';
import 'package:kilo_health/services/service_SignUp.dart';
import 'package:kilo_health/services/service_getDonation.dart';
import 'package:kilo_health/services/service_login.dart';


import 'package:kilo_health/translate_language/translation.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  

  // Now you can call your async methods
  try {
    await Translation.loadlanguage();
  } catch (e) {
    print('Error loading language: $e');
  }
 Get.lazyPut(() => LoginService());
  Get.lazyPut(() => ProfileService());
  Get.lazyPut(() => SignUpService());
  Get.lazyPut(() => GetRequestService());
  Get.lazyPut(() => DonationBloodService());

  // Register repositories
  Get.lazyPut<UserRepositories>(() => UserRepositoriesImpl(
    Get.find(),
    Get.find(),
    Get.find(),
    Get.find(),
    Get.find(),
  ));
  // Get.lazyPut<UserRepositories>(() => FakeDataRepositories());
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // LoginController loginController = Get.put(LoginController(Get.find()));
  final themecontroller = Get.put(ThemeController());

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        translations: Translation(),
        darkTheme: ThemeData.dark(),
        themeMode: themecontroller.theme,
        title: 'Flutter Demo',
        home: const SplasSreen(),
        theme: ThemeData.light(),
      ),
    );
  }
}
