import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/Login_Screen/conpoment/textfiwldPasssword.dart';
import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';
import 'package:kilo_health/conpoment/text_Field.dart';
import 'package:kilo_health/Screen/main_Sreen/main_Sreen.dart';

class ScreenSignin extends StatelessWidget {
  const ScreenSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(bottom: 25, top: 170),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 144),
                child: Opacity(
                  opacity: 0.1,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          "lib/image/bool.jpg",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Image.asset(
                        height: 200,
                        fit: BoxFit.cover,
                        "lib/image/LogoSingIn.jpg"),
                    const SizedBox(
                      height: 40,
                    ),
                    const Textfial(
                        text: "Phone Number", image: "lib/image/Call.jpg"),
                    const SizedBox(
                      height: 25,
                    ),
                    const Textfiwldpasssword(),
                    const SizedBox(
                      height: 50,
                    ),
                    ConpomentButtom(
                        title: "Login",
                        onTa: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainSreen(
                                indexviewPage: 0,
                              ),
                            ),
                            (Route<dynamic> route) => false,
                          );
                        }),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
