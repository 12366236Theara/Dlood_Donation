import 'package:flutter/material.dart';

import 'package:kilo_health/Screen/oTP_Screen/conpoment/codec_OTP.dart';
import 'package:kilo_health/Screen/oTP_Screen/conpoment/textimage.dart';

class OtpScreen extends StatefulWidget {
  final String password;
  final String phone;

  final String confirmpassword;
  const OtpScreen(
      {super.key,
      required this.password,
      required this.confirmpassword,
      required this.phone});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 200, bottom: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Textimage(),

              CodecOtp(
                phone: widget.phone,
                confirmpassword: widget.confirmpassword,
                password: widget.password,
              ),

              // ConpomentButtom(
              //   title: "Submit",
              //   onTa: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const ScreenSignin(),
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
