import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Propertysetting(
  String image,
  String title,
) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(
              width: 15,
            ),
            Text(title , style: GoogleFonts.notoSansKhmer(),),
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Lines(),
    ],
  );
}

Widget Lines() {
  return Container(
    height: 1,
    width: double.infinity,
    color: Colors.grey,
  );
}
