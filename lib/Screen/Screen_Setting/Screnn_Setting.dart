import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_Setting/conpoment/TurntON_Off.dart';
import 'package:kilo_health/Screen/Screen_Setting/conpoment/property.dart';

class ScrennSetting extends StatelessWidget {
  const ScrennSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          "Setting ",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TurntonOff(),
             const SizedBox(
              height: 20,
            ),
            Propertysetting("lib/image/notificationss.jpg", "Notifications"),
            const SizedBox(
              height: 20,
            ),
            Propertysetting("lib/image/Languag.jpg", "Languages"),
            const SizedBox(
              height: 20,
            ),
            Propertysetting("lib/image/Securetys.jpg", "Securety"),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset("lib/image/helpe.jpg"),
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
