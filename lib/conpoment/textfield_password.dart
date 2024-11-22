import 'package:flutter/material.dart';

class TextfieldPassword extends StatefulWidget {
  final String text;
  const TextfieldPassword({
    super.key,
    required this.text,
  });

  @override
  State<TextfieldPassword> createState() => _TextfieldPasswordState();
}

class _TextfieldPasswordState extends State<TextfieldPassword> {
  bool _isCheckPassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        bottom: 2.5,
        left: 20,
        right: 20,
      ),
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
                color: Colors.black, blurRadius: 0.1, offset: Offset(0, 0))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
            obscureText: _isCheckPassword,
            decoration: InputDecoration(
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: "Password",
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isCheckPassword = !_isCheckPassword;
                      });
                    },
                    icon: Icon(_isCheckPassword
                        ? Icons.visibility
                        : Icons.visibility_off)),
                border: InputBorder.none)),
      ),
    );
  }
}
