import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kilo_health/Screen/Screen_Setting/conpoment/property.dart';
import 'package:kilo_health/controller/darkMode_controller.dart';

class Darkmode extends StatefulWidget {
  const Darkmode({super.key});

  @override
  DarkmodeState createState() => DarkmodeState();
}

class DarkmodeState extends State<Darkmode> {
  bool ischeckValue = false;
  final themeMode = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("lib/image/dark-mode.png"),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text("Dark-mode"),
                ],
              ),
              Obx(
                () => Switch(
                  activeColor: Colors.blue,
                  splashRadius: 4,
                  value: themeMode.isDarkMode.value,
                  onChanged: 
              
                      themeMode.togleTheme,
                    
                  
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Lines(),
      ],
    );
  }
}
