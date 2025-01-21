import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kilo_health/Screen/Screen_LornPolinDetail_Accepts/conpoment/text.dart';

import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';

import 'package:kilo_health/Screen/main_Sreen/main_Sreen.dart';

class ScreendonorDetail extends StatelessWidget {
  const ScreendonorDetail({super.key});

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
        title: const Text(
          "Nallarasi",
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
                  image: AssetImage("lib/image/bloodwrite.png"),
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
                    TextDetail("lib/image/profile-fills.png", "LORN POLIN"),
                    const SizedBox(
                      height: 10,
                    ),
                    lin(),
                    const SizedBox(
                      height: 45,
                    ),
                    TextDetail(
                        "lib/image/map-hospital.png", "Phnom Penh Hospitalr"),
                    const SizedBox(
                      height: 10,
                    ),
                    lin(),
                    const SizedBox(
                      height: 45,
                    ),
                    TextDetail("lib/image/Blood.png", "B+"),
                    const SizedBox(
                      height: 10,
                    ),
                    lin(),
                    const SizedBox(
                      height: 45,
                    ),
                    TextDetail("lib/image/calldetail.png", "012 123 123"),
                    const SizedBox(
                      height: 10,
                    ),
                    lin(),
                    const SizedBox(
                      height: 45,
                    ),
                    TextDetail("lib/image/notedetail.png", "Add Note"),
                    const SizedBox(
                      height: 10,
                    ),
                    lin(),
                  ],
                ),
                Column(
                  children: [
                    ConpomentButtom(
                      title: "request".tr,
                      onTa: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const MainSreen(indexviewPage: 0),
                          ),
                          (route) => false,
                        );
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
