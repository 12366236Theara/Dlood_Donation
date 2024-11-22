import 'package:flutter/material.dart';

class Textfiwldpasssword extends StatefulWidget {
  const Textfiwldpasssword({super.key});

  @override
  State<Textfiwldpasssword> createState() => _TextfiwldpassswordState();
}

class _TextfiwldpassswordState extends State<Textfiwldpasssword> {
  bool _isCheckPassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
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
                border: InputBorder.none)),
      ),
    );
  }
}
