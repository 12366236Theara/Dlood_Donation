import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilo_health/Screen/Screen_Setting/conpoment/dark_Mode.dart';
import 'package:kilo_health/Screen/Screen_Setting/conpoment/property.dart';

class ScrennSetting extends StatelessWidget {
  const ScrennSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            color: Colors.white,
            Icons.arrow_back_ios_new,
          ),
        ),
       
        title:  Text(
          "settings".tr,
          style: GoogleFonts.notoSansKhmer(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Darkmode(),
             const SizedBox(
              height: 20,
            ),
            Propertysetting("lib/image/notification-light.png", "Notifications"),
            const SizedBox(
              height: 20,
            ),
            Propertysetting("lib/image/languagesetting.png", "Languages"),
            const SizedBox(
              height: 20,
            ),
            Propertysetting("lib/image/securetysetting.png", "Securety"),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset("lib/image/help.png"),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text("Help"),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
