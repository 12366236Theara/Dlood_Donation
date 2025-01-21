import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/Screen/Language_Screen/conpoment/data_language.dart';

import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';
import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangaugeScreen extends StatefulWidget {
  const LangaugeScreen({super.key});

  @override
  State<LangaugeScreen> createState() => _LangaugeScreenState();
}

class _LangaugeScreenState extends State<LangaugeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('lib/image/Language.png'),

              const DataLanguage(),
              
              ConpomentButtom(
                
                title:  "confirm".tr,
                onTa: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setBool('LangaugeScreen', true);
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SigninSignup(),
                    ),
                    (Route<dynamic> route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
