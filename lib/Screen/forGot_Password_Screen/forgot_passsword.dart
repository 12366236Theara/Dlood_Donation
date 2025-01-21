import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';
import 'package:kilo_health/Screen/forGot_Password_Screen/conpoment/textfreim.dart';
import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';
import 'package:kilo_health/Screen/forGot_Password_Screen/conpoment/text.dart';
import 'package:kilo_health/controller/forgotPassword_controller.dart';

class ForgotPasssword extends StatefulWidget {
  const ForgotPasssword({super.key});

  @override
  State<ForgotPasssword> createState() => _ForgotPassswordState();
}

class _ForgotPassswordState extends State<ForgotPasssword> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController phonecontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();
    final TextEditingController confirmpasswordcontroller =
        TextEditingController();
    final ForgotpasswordController controller =
        Get.put(ForgotpasswordController());
    late FocusNode currentFocus;
    @override
    void initState() {
      super.initState();
      currentFocus = FocusNode();
    }

    @override
    void dispose() {
      currentFocus.dispose();
      super.dispose();
    }

    return GestureDetector(
      onTap: () {
        currentFocus.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SigninSignup(),
                ),
              );
            },
            child: Image.asset(
              "lib/image/arrow-Back.jpg",
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          title: Text(
            "forgot_password".tr, // Translation key for "Forgot Password"
            style: GoogleFonts.notoSansKhmer(fontSize: 18, color: Colors.white),
          ),
        ),
        body: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "lib/image/fegotpasswordotp.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                const Textscompoment(),
                Column(
                  children: [
                    Textfreim(
                      type: TextInputType.phone,
                      controller: phonecontroller,
                      text: 'phone_number'
                          .tr, // Translation key for "Phone Number"
                      image: 'lib/image/calls.jpg',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Textfreim(
                      type: TextInputType.text,
                      controller: passwordcontroller,
                      text: 'password'.tr, // Translation key for "Phone Number"
                      image: 'lib/image/Password.jpg',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Textfreim(
                      type: TextInputType.text,
                      controller: confirmpasswordcontroller,
                      text: 'confirm_password'
                          .tr, // Translation key for "Phone Number"
                      image: 'lib/image/Password.jpg',
                    ),
                  ],
                ),
                ConpomentButtom(
                  title: "continue".tr, // Translation key for "Continue"
                  onTa: () {
                    final phone = phonecontroller.text;
                    final password = passwordcontroller.text;
                    final confirmpassword = confirmpasswordcontroller.text;
                    controller.postContronller(
                        phone: phone,
                        password: password,
                        confirmpassword: confirmpassword);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
