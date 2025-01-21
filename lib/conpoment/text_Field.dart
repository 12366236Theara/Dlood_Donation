import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfial extends StatelessWidget {
  final String text;
  final String image;
  const Textfial({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle:   GoogleFonts.notoSansKhmer(color: Colors.grey),
        hintText: text,
        prefixIcon: Image.asset(image),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
