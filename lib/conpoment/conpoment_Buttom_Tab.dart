import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConpomentButtom extends StatelessWidget {
  final String title;

  const ConpomentButtom({super.key, required this.title, this.onTa});
  final onTa;

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
            color: const Color(0xff0a7ebd)),
        child: Text(
          title,
          
          style: GoogleFonts.notoSansKhmer(color: Colors.white)
        ),
      ),
    );
  }
}
