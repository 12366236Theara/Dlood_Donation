import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kilo_health/Screen/Screen_CreateARequest/Screeen_CreateARequest.dart';
import 'package:kilo_health/Screen/home_Sreen/conpoment/DonationRequests.dart';
import 'package:kilo_health/Screen/Screen_Notification/Screen_Notification.dart';
import 'package:kilo_health/Screen/home_Sreen/conpoment/RequestsDonation.dart';
import 'package:kilo_health/Screen/home_Sreen/conpoment/GriteItem_DonationRequests.dart';
import 'package:kilo_health/Screen/home_Sreen/conpoment/catocary.dart';
import 'package:kilo_health/Screen/home_Sreen/conpoment/gritItem.dart';
import 'package:kilo_health/Screen/home_Sreen/conpoment/request.dart';
import 'package:kilo_health/Screen/home_Sreen/conpoment/slider.dart';
import 'package:kilo_health/Screen/main_Sreen/main_Sreen.dart';

class HomeSreen extends StatelessWidget {
  const HomeSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "home".tr,
          style: GoogleFonts.notoSansKhmer(color: Colors.white, fontSize: 18),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenNotification(),
                    ));
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 25,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Sliderss(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Category(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainSreen(
                              indexviewPage: 1,
                            ),
                          ),
                          (Route<dynamic> route) => false);
                    },
                    text: 'find_donors'.tr,
                    image: "lib/image/catocary/iconcatory.jpg",
                  ),
                  Category(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreeenCreatearequest(),
                          ));
                    },
                    text: 'request_blood'.tr,
                    image: "lib/image/catocary/foroufit.jpg",
                  ),
                  Category(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const MainSreen(indexviewPage: 2),
                          ),
                          (Route<dynamic> route) => false);
                    },
                    text: 'report'.tr,
                    image: "lib/image/catocary/clipboardss.jpg",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // const Cater(),
            //Request Donition
            Requst(
              title: 'request_donations'.tr,
              onTab: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Requestsdonation(),
                    ));
              },
            ),
            const SizedBox(
              height: 13,
            ),
            //List GriteItem Request Donition
            const Grititem(),
            const SizedBox(
              height: 10,
            ),
            Requst(
              title: 'donation_requests'.tr,
              onTab: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Donationrequests(),
                    ));
              },
            ),
            const SizedBox(
              height: 10,
            ),
             GriteitemDonationrequests(),
          ],
        ),
      ),
    );
  }
}
