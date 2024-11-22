import 'package:flutter/material.dart';

Widget TextDonor (
  String image,
  String title,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Image.asset(image),
        const SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16),
        )
      ],
    ),
  );
}
