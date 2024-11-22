import 'package:flutter/material.dart';

class Requst extends StatelessWidget {
  final String title;
  final onTab;
  const Requst({super.key, required this.title, this.onTab});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        InkWell(
            onTap: onTab,
            child: Image.asset(
                height: 34, fit: BoxFit.cover, "lib/image/arrow-right.jpg"))
      ],
    );
  }
}
