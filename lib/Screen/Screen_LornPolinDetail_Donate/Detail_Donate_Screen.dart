import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/Screen/Screen_LornPolinDetail_Accepts/conpoment/buttom.dart';
import 'package:kilo_health/Screen/Screen_LornPolinDetail_Accepts/conpoment/text.dart';

import 'package:kilo_health/Screen/Screen_LornPolinDetail_Accepts/detail_Accepts.dart';
import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';

class DetailDonateScreen extends StatelessWidget {
  String fistname;
  String lastname;
  String location;
  String typeblood;
  String phone;
  String note;
  DetailDonateScreen(
      {super.key,
      required this.fistname,
      required this.lastname,
      required this.location,
      required this.typeblood,
      required this.note,
      required this.phone});

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
        title:  Text(
          "$fistname $lastname",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Stack(
        children: [
          // Background image container
          Container(
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("lib/image/syringeblood.png"),
              ),
            ),
          ),
          // Overlaying content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        TextDetail("lib/image/profile-fills.png", "$fistname $lastname"),
                        const SizedBox(
                          height: 10,
                        ),
                        lin(),
                        const SizedBox(
                          height: 45,
                        ),
                        TextDetail("lib/image/map-hospital.png",
                            location),
                        const SizedBox(
                          height: 10,
                        ),
                        lin(),
                        const SizedBox(
                          height: 45,
                        ),
                        TextDetail("lib/image/Blood.png", typeblood),
                        const SizedBox(
                          height: 10,
                        ),
                        lin(),
                        const SizedBox(
                          height: 45,
                        ),
                        TextDetail("lib/image/calldetail.png", phone),
                        const SizedBox(
                          height: 10,
                        ),
                        lin(),
                        const SizedBox(
                          height: 45,
                        ),
                        TextDetail("lib/image/notedetail.png", note),
                        const SizedBox(
                          height: 10,
                        ),
                        lin(),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    ConpomentButtom(
                      title: "donate".tr,
                      onTa: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Buttoms(
                        title: "reject".tr,
                        onTa: () {
                          Navigator.pop(context);
                        }),
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
