import 'package:flutter/material.dart';

class Catocary extends StatelessWidget {
  final onTap;
  final String text;
  final String image;
  const Catocary({super.key, required this.text, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shadowColor: Colors.black,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 23),
          alignment: Alignment.center,
          height: 110,
          width: 110,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const []),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(image),
              Text(
                text,
                style: const TextStyle(color: Colors.black, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
