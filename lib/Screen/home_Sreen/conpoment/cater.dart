import 'package:flutter/material.dart';

class Cater extends StatelessWidget {
  const Cater({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 8,
          width: 20,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        ),
      ],
    );
  }
}
