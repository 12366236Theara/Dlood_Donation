import 'package:flutter/material.dart';

class Textscompoment extends StatelessWidget {
  const Textscompoment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Forgot",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        Text(
          "Password?",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        Text(
          "Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number.",
          style: TextStyle(color: Colors.grey, fontSize: 17),
        ),
        SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
