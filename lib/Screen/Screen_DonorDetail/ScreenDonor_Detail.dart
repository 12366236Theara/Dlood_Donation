import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_DonorDetail/conpoment/textDonor.dart';
import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';

import 'package:kilo_health/Screen/main_Sreen/main_Sreen.dart';

class ScreendonorDetail extends StatelessWidget {
  const ScreendonorDetail({super.key});

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
          "Donor Detail",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Stack(
        children: [
          // Background image container
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 400, right: 100),
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("lib/image/syringe withaof blood.jpg"),
                ),
              ),
            ),
          ),
          // Overlaying content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextDonor(
                      "lib/image/persont.jpg",
                      "Nallarasi",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    lin(),
                    const SizedBox(
                      height: 30,
                    ),
                    TextDonor(
                        "lib/image/locationtt.jpg", "Phnom Penh Hospitalr"),
                    const SizedBox(
                      height: 20,
                    ),
                    lin(),
                    const SizedBox(
                      height: 30,
                    ),
                    TextDonor("lib/image/locationtt.jpg", "B+"),
                    const SizedBox(
                      height: 20,
                    ),
                    lin(),
                    const SizedBox(
                      height: 20,
                    ),
                    TextDonor("lib/image/calll.jpg", "012 123 123"),
                    const SizedBox(
                      height: 20,
                    ),
                    lin(),
                    const SizedBox(
                      height: 30,
                    ),
                    TextDonor("lib/image/note.jpg", "Add Note"),
                    const SizedBox(
                      height: 20,
                    ),
                    lin(),
                  ],
                ),
                Column(
                  children: [
                    ConpomentButtom(
                      title: "Request",
                      onTa: () {
                       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MainSreen(indexviewPage: 0),), (route) => false,);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget lin() {
  return Container(
    width: double.infinity,
    height: 1,
    color: Colors.grey,
  );
}
