import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfreim extends StatelessWidget {
  final String text;
  final String image;
  final TextEditingController controller;
  final TextInputType type;

  const Textfreim(
      {super.key,
      required this.text,
      required this.image,
      required this.controller,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      controller: controller,
      decoration: InputDecoration(
        hintStyle: GoogleFonts.notoSansKhmer(color: Colors.grey.shade700),
        hintText: text,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10), // Padding for better layout
          child: Image.asset(
            image,
            width: 20,
            height: 20,
            fit: BoxFit.contain,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
