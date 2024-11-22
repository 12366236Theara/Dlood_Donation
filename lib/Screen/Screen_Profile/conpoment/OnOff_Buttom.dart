import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_Profile/conpoment/Property.dart';

class OnOffButton extends StatefulWidget {
  const OnOffButton({super.key});

  @override
  _OnOffButtonState createState() => _OnOffButtonState();
}

class _OnOffButtonState extends State<OnOffButton> {
  bool ischeckValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("lib/image/Availbledonate.jpg"),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text("Available for donate"),
                ],
              ),
              Switch(
                activeColor: Colors.blue,
                splashRadius: 4,
                value: ischeckValue,
                onChanged: (value) {
                  setState(() {
                    ischeckValue = value;
                  });
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Lines(),
      ],
    );
  }
}
