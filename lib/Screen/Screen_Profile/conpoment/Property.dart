import 'package:flutter/material.dart';

Widget Property(
  String image,
  String title,
) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(
              width: 15,
            ),
            Text(title),
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Lines(),
    ],
  );
}

Widget Lines() {
  return Container(
    height: 1,
    width: double.infinity,
    color: Colors.grey,
  );
}
