import 'package:flutter/material.dart';

class Textfial extends StatelessWidget {
  final String text;
  final String image;
  const Textfial({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black, blurRadius: 0.1, offset: Offset(0, 0))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
            decoration: InputDecoration(
                hintStyle: const TextStyle(color: Colors.grey),
                hintText: text,
                prefixIcon: Image.asset(image),
                border: InputBorder.none)),
      ),
    );
  }
}
