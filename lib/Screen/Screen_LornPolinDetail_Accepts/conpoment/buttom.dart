import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttoms extends StatelessWidget {
  final onTa;
  final String title;
  const Buttoms({super.key, this.onTa, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTa,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Colors.red),
        child: Text(
          title,
          style:  GoogleFonts.notoSansKhmer(
               color: Colors.white),
        ),
      ),
    );
  }
}
