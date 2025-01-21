import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  final onTap;
  final String text;
  final String image;
  const Category(
      {super.key, required this.text, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        elevation: 0.3,
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image),
              Text(
                maxLines: 2,
                overflow: TextOverflow.visible,
                text,
                style: GoogleFonts.notoSansKhmer(
                    color: Colors.black, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
