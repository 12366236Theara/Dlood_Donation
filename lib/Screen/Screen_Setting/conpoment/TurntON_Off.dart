import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_Profile/conpoment/Property.dart';

class TurntonOff extends StatefulWidget {
  const TurntonOff({super.key});

  @override
  TurntonOffState createState() => TurntonOffState();
}

class TurntonOffState extends State<TurntonOff> {
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
                  Image.asset("lib/image/dark-mode.jpg"),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text("Dark-mode"),
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
