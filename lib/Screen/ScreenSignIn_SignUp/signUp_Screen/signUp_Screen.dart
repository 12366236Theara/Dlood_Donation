import 'package:flutter/material.dart';

import 'package:kilo_health/Screen/ScreenSignIn_SignUp/Login_Screen/conpoment/textField.dart';
import 'package:kilo_health/Screen/OTPverification_Screen/oTPverification.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';

import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';
import 'package:kilo_health/conpoment/textfield_password.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25,
          ),
          const Textfields(
            text: 'Fist name',
          ),
          const SizedBox(
            height: 25,
          ),
          const Textfields(
            text: 'Last name',
          ),
          const SizedBox(
            height: 25,
          ),
          const Textfields(
            text: 'Phone Number',
          ),
          const SizedBox(
            height: 25,
          ),
          const TextfieldPassword(
            text: 'Password',
          ),
          const SizedBox(
            height: 25,
          ),
          const TextfieldPassword(
            text: 'Confirm Password',
          ),
          const SizedBox(
            height: 25,
          ),
          ConpomentButtom(
              title: "Sign up",
              onTa: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Otpverification(),
                ));
              }),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?"),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SigninSignup(),
                    ),
                  );
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
