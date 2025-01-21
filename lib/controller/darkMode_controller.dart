import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  @override
  var isDarkMode = false.obs;

  ThemeMode get theme => isDarkMode.value ? ThemeMode.dark : ThemeMode.light;
  void togleTheme(bool value) {
    isDarkMode.value = value;

    update();
  }
  
}
