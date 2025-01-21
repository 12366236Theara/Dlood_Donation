import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilo_health/controller/controller_getrequest.dart';

class Textfiwldpasssword extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validators;
  final Key keys;

  const Textfiwldpasssword({
    super.key,
    required this.controller, required this.validators, required this.keys,
  });

  @override
  State<Textfiwldpasssword> createState() => _TextfiwldpassswordState();
}

class _TextfiwldpassswordState extends State<Textfiwldpasssword> {
  bool _isCheckPassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validators,
      key: widget.keys,
        controller: widget.controller,
        obscureText: _isCheckPassword,
        decoration: InputDecoration(
          hintStyle: GoogleFonts.notoSansKhmer(color: Colors.grey ,),
          hintText: "password".tr,

          prefixIcon: Image.asset("lib/image/Password.jpg"),
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _isCheckPassword = !_isCheckPassword;
                });
              },
              icon: Icon(_isCheckPassword
                  ? Icons.visibility
                  : Icons.visibility_off)),
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
        ));
  }
}
