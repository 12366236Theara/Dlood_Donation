import 'package:flutter/material.dart';

class TextfieldEdite extends StatelessWidget {
  final String text;
  final image;
  const TextfieldEdite({super.key, required this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontSize: 19,
            color: Colors.grey),
          hintText: text,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(11),
            child: Image.asset(
              
              
              fit: BoxFit.cover,
              image,
            ),
          ),
        ),
      ),
    );
  }
}
