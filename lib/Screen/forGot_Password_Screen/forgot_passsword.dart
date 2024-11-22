import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';
import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';
import 'package:kilo_health/conpoment/text_Field.dart';
import 'package:kilo_health/Screen/forGot_Password_Screen/conpoment/text.dart';
import 'package:kilo_health/Screen/oTP_Screen/oTP_Screen.dart';

class ForgotPasssword extends StatelessWidget {
  const ForgotPasssword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SigninSignup(),
                  ));
            },
            child: Image.asset(
              "lib/image/arrow-Back.jpg",
              color: Colors.white,
            )),
        backgroundColor: Colors.blue,
        title: const Text(
          "ForGotPasssword",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        actions: [
          Image.asset(
            "lib/image/notification-light.jpg",
            color: Colors.white,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 90, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    "lib/image/Groupforgetss.jpg",
                    fit: BoxFit.cover,
                    height: 170,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
              const Textscompoment(),
              const Textfial(
                text: 'Phone Number',
                image: 'lib/image/calls.jpg',
              ),
              const SizedBox(
                height: 70,
              ),
              ConpomentButtom(
                title: "Continue",
                onTa: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpScreen(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
