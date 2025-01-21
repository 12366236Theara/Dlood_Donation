import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/Screen/Screen_Profile/Screen_Profile.dart';
import 'package:kilo_health/conpoment/Screen_ProfileDonor/conpoment/Cartse.dart';
import 'package:kilo_health/conpoment/Screen_ProfileDonor/conpoment/Property_Call.dart';

class ScreenProfiledonor extends StatelessWidget {
  const ScreenProfiledonor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            color: Colors.white,
            Icons.arrow_back_ios_new,
          ),
        ),
        actions: const [
          Icon(size: 27, color: Colors.white, Icons.notifications),
        ],
        title: const Text(
          "Nallarasi",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              foregroundImage: AssetImage("lib/image/imageProfile.jpg"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Nallarasi",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/image/calls.jpg",
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "General Hospital, Phnom Penh",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PropertyCall(Icons.call, "call_now".tr, Colors.blue),
                PropertyCall(
                    Icons.group_remove_rounded, "request".tr, Colors.red),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Cartse("0+", "blood_type".tr),
                const SizedBox(
                  width: 30,
                ),
                line(),
                const SizedBox(
                  width: 30,
                ),
                Cartse("05", "donated".tr),
                const SizedBox(
                  width: 30,
                ),
                line(),
                const SizedBox(
                  width: 30,
                ),
                Cartse("06", "request".tr),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
