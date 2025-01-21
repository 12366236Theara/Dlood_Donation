import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_Profile/Screen_Profile.dart';
import 'package:kilo_health/Screen/find_Donors_Screen/findDonors_Screen.dart';
import 'package:kilo_health/Screen/home_Sreen/home_Sreen.dart';

import 'package:kilo_health/Screen/main_Sreen/conpoment/gbottom.dart';
import 'package:kilo_health/Screen/reports_Screen/reports_Screen.dart';

class MainSreen extends StatefulWidget {
  final int indexviewPage;
  const MainSreen({super.key, required this.indexviewPage});

  @override
  State<MainSreen> createState() => _MainSreenState();
}

class _MainSreenState extends State<MainSreen> {
  late int _indexpage;

  @override
  void initState() {
    _indexpage = widget.indexviewPage;
    super.initState();
  }

  final List<Widget> _page = [
    const HomeSreen(),
    const FinddonorsScreen(),
    const ReportsScreen(),
    const ScreenProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _page[_indexpage],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,),
          child: GBottom(
            selectedIndex: _indexpage,
            onTabChange: (index) {
              setState(() {
                _indexpage = index;
              });
            },
          ),
        ));
  }
}
