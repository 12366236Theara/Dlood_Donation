import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Requst extends StatelessWidget {
  final String title;
  final onTab;
  const Requst({super.key, required this.title, this.onTab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
            title,
            style: GoogleFonts.notoSansKhmer(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          InkWell(
              onTap: onTab,
              child: Image.asset(
                  height: 34, fit: BoxFit.cover, "lib/image/arrow-right.png"))
        ],
      ),
    );
  }
}
