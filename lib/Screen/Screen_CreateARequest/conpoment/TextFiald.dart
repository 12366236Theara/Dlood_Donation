import 'package:flutter/material.dart';

class Textfiele extends StatelessWidget {
  final String text;
  final image;
  const Textfiele({super.key, required this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
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
