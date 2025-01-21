import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfields extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final TextInputType keytype;
  final Key keys;
  final String? Function(String?)? validator;

  const Textfields(
      {super.key,
      required this.text,
      required this.controller,
      required this.keytype,
      required this.keys,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: keys,
      validator: validator,
      controller: controller,
      keyboardType: keytype,
      decoration: InputDecoration(
        hintStyle:   GoogleFonts.notoSansKhmer(color: Colors.grey),
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
