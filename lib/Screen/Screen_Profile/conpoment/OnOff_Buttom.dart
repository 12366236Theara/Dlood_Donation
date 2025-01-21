import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kilo_health/Screen/Screen_Setting/conpoment/property.dart';
import 'package:kilo_health/const/const_image.dart';

class OnOffButton extends StatefulWidget {
  const OnOffButton({super.key});

  @override
  _OnOffButtonState createState() => _OnOffButtonState();
}

class _OnOffButtonState extends State<OnOffButton> {
  bool ischeckValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset( 'lib/image/available.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  Text("availaclefor_donate".tr ,style: GoogleFonts.notoSansKhmer(),),
                ],
              ),
              Switch(
                activeColor: Colors.blue,
                splashRadius: 4,
                value: ischeckValue,
                onChanged: (value) {
                  setState(() {
                    ischeckValue = value;
                  });
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Lines(),
      ],
    );
  }
}
