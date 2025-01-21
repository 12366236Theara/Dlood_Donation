import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Textimage extends StatelessWidget {
  const Textimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(fit: BoxFit.cover, "lib/image/fegotpasswordotp.png"),
        Text(
          "OTP_verification".tr,
          style: GoogleFonts.notoSansKhmer(color: Colors.black, fontSize: 20),
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "enter_OTP_sent_to".tr,
                style: GoogleFonts.notoSansKhmer(),
              ),
              const Text(' +855-97746666')
            ])
      ],
    );
  }
}
