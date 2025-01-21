import 'package:flutter/material.dart';

class Textfiele extends StatelessWidget {
  final String text;
  final image;
  final TextEditingController controller;
  final TextInputType type;
  const Textfiele({super.key, required this.text, this.image, required this.controller, required this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        keyboardType: type,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.grey),
          hintText: text,
          prefixIcon: Image.asset(
            height: 10,
            image,
          ),
        ),
      ),
    );
  }
}
