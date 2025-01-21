import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Textscompoment extends StatelessWidget {
  const Textscompoment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "forgot".tr, // Translation key for "Forgot"
              style:   GoogleFonts.notoSansKhmer(fontSize: 18, color: Colors.black),
            ),
            Text(
              "password".tr, // Translation key for "Password?"
              style:   GoogleFonts.notoSansKhmer(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
        Text(
          "forgot_password_description".tr, // Translation key for the description
          style:   GoogleFonts.notoSansKhmer(color: Colors.grey, fontSize: 17),
        ),
       
      ],
    );
  }
}
