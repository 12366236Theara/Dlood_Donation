import 'package:flutter/material.dart';
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
          text: "Home",
        ),
        GButtonWidget(
          icon: Icons.search_outlined,
          text: "Find Donors",
        ),
        GButtonWidget(
          icon: Icons.receipt_long,
          text: "Report",
        ),
        GButtonWidget(
          icon: Icons.person_outline_outlined,
          text: "Profile",
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
    textColor: Colors.blue,
    iconActiveColor: Colors.blue,
    icon: icon,
    text: text,
  );
}
