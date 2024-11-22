import 'package:flutter/material.dart';

class ConpomentButtom extends StatelessWidget {
  final String title;

  const ConpomentButtom({super.key, required this.title, this.onTa});
  final onTa;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTa,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: const Color(0xff0a7ebd)),
        child: Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),
        ),
      ),
    );
  }
}
