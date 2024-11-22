import 'package:flutter/material.dart';

import 'package:kilo_health/Screen/ScreenSignIn_SignUp/Login_Screen/conpoment/check_Box.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/Login_Screen/conpoment/textfiwldPasssword.dart';

import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';
import 'package:kilo_health/conpoment/text_Field.dart';
import 'package:kilo_health/Screen/main_Sreen/main_Sreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Textfial(text: "Phone Number", image: "lib/image/calls.jpg"),
          const SizedBox(
            height: 25,
          ),
          const Textfiwldpasssword(),
          const SizedBox(
            height: 30,
          ),
          const CheckBox(),
          const SizedBox(
            height: 70,
          ),
          ConpomentButtom(
            title: "Login",
            onTa: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => const MainSreen(
                          indexviewPage: 0,
                        )),
                (Route<dynamic> route) =>
                    false, // This condition removes all previous routes
              );
            },
          ),
        ],
      ),
    );
  }
}
