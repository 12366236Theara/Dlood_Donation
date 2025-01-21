import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GBottom extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChange;

  const GBottom({
    super.key,
    required this.selectedIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
      backgroundColor: Colors.white60,
      selectedIndex: selectedIndex,
      onTabChange: onTabChange,
      tabs: [
        GButtonWidget(
          icon: Icons.home_sharp,
          text: "home".tr,
        ),
        GButtonWidget(
          icon: Icons.search_outlined,
          text: "find_donor".tr,
        ),
        GButtonWidget(
          icon: Icons.receipt_long,
          text: "report".tr,
        ),
        GButtonWidget(
          icon: Icons.person_outline_outlined,
          text: "profile".tr,
        ),
      ],
    );
  }
}

// Reusable GButton configuration
GButton GButtonWidget({required String text, required IconData icon}) {
  return GButton(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    backgroundColor: Colors.grey[200],
    iconSize: 30,
    textSize: 27,
    textStyle: GoogleFonts.notoSansKhmer(color: Colors.blue),
    iconActiveColor: Colors.blue,
    icon: icon,
    text: text,
  );
}
