import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Language_Screen/conpoment/data_language.dart';

import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';
import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';

enum SingingCharacter { K, E, C }

class LangaugeScreen extends StatefulWidget {
  const LangaugeScreen({super.key});

  @override
  State<LangaugeScreen> createState() => _LangaugeScreenState();
}

class _LangaugeScreenState extends State<LangaugeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("lib/image/Group.jpg"),
              ),
              const DataLanguage(),
              const SizedBox(
                height: 200,
              ),
              ConpomentButtom(
                title: "Confirm",
                onTa: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SigninSignup(),
                    ),
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
