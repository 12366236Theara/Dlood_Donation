import 'package:flutter/material.dart';

Widget PropertyCall(IconData icon, String title, Color color) {
  return Container(
    alignment: Alignment.center,
    height: 49,
    width: 164,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(color: Colors.white, icon),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        )
      ],
    ),
  );
}
