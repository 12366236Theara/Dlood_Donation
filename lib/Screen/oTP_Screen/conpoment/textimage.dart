import 'package:flutter/material.dart';

class Textimage extends StatelessWidget {
  const Textimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
            height: 180,
            width: 180,
            fit: BoxFit.cover,
            "lib/image/Groupforgetss.jpg"),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "OTP VERIFICATION",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        const SizedBox(
          height: 14,
        ),
        const Text("Enter the OTP sent to - +855-97746666")
      ],
    );
  }
}
