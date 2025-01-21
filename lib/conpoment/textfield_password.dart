import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextfieldPassword extends StatefulWidget {
  final String text;
  final TextEditingController controller;
  final TextInputType keyType;
  final Key keys;
  final String? Function(String?)? validatior;
  const TextfieldPassword({
    super.key,
    required this.text,
    required this.controller,
    required this.keyType,
    required this.keys,
    this.validatior,
  });

  @override
  State<TextfieldPassword> createState() => _TextfieldPasswordState();
}

class _TextfieldPasswordState extends State<TextfieldPassword> {
  bool _isCheckPassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.keys,
      validator: widget.validatior,
      controller: widget.controller,
      keyboardType: widget.keyType,
      obscureText: _isCheckPassword,
      decoration: InputDecoration(
          hintStyle:   GoogleFonts.notoSansKhmer(color: Colors.grey),
          hintText: widget.text,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _isCheckPassword = !_isCheckPassword;
                });
              },
              icon: Icon(
                  _isCheckPassword ? Icons.visibility : Icons.visibility_off)),
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
