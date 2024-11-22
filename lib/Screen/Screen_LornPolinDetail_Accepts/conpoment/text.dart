import 'package:flutter/material.dart';

Widget TextDetail(
  String image,
  String title,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
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
            fontSize: 16),
        )
      ],
    ),
  );
}
