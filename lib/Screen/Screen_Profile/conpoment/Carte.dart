import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Carte(String title, String description) {
  return Column(
    children: [
      Text(
        title,
        style: GoogleFonts.notoSansKhmer(
            fontSize: 26, fontWeight: FontWeight.bold),
      ),
      Text(description, style: GoogleFonts.notoSansKhmer()),
    ],
  );
}
