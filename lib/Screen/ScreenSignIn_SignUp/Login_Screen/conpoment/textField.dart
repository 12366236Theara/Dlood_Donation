import 'package:flutter/material.dart';

class Textfields extends StatelessWidget {
  final String text;

  const Textfields({super.key, required this.text});

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
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: TextField(
          
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.grey),
                hintText: text,
                
                border: InputBorder.none)),
      ),
    );
  }
}