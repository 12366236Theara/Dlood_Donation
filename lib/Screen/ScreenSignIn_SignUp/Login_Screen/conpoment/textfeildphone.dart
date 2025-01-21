import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfials extends StatelessWidget {
  final String text;
  final String image;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const Textfials({
    super.key,
    required this.validator,
    required this.text,
    required this.image,
    required this.keyboardType,
    required this.controller, required Key keys,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintStyle: GoogleFonts.notoSansKhmer(color: Colors.grey ,),
        hintText: text,
        prefixIcon: Image.asset(image),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
        ),
        
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue, width: 1.5),
        ),
      ),
    );
  }
}
