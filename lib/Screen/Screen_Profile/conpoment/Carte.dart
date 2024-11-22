import 'package:flutter/material.dart';

Widget Carte(String title, String description) {
  return  Column(
    children: [
      Text(title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      Text(description)
    ],
  );
}
