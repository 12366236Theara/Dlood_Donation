import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_CreateARequest/Screeen_CreateARequest.dart';
import 'package:kilo_health/Screen/Screen_DonationRequests/DonationRequests.dart';
import 'package:kilo_health/Screen/Screen_Notification/Screen_Notification.dart';
import 'package:kilo_health/Screen/Screen_RequestsDonation/RequestsDonation.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white, fontSize: 18),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Sliderss(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Catocary(
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
                    text: 'Find Donors',
                    image: "lib/image/catocary/iconcatory.jpg",
                  ),
                  Catocary(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreeenCreatearequest(),
                          ));
                    },
                    text: 'Request Blood',
                    image: "lib/image/catocary/foroufit.jpg",
                  ),
                  Catocary(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const MainSreen(indexviewPage: 2),
                          ),
                          (Route<dynamic> route) => false);
                    },
                    text: 'Report',
                    image: "lib/image/catocary/clipboardss.jpg",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // const Cater(),
              //Request Donition
              Requst(
                title: 'Request Donations',
                onTab: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Requestsdonation(),
                      ));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              //List GriteItem Request Donition
              const Grititem(),
              const SizedBox(
                height: 20,
              ),
              Requst(
                title: ' Donations Request',
                onTab: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Donationrequests(),
                      ));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const GriteitemDonationrequests(),
            ],
          ),
        ),
      ),
    );
  }
}
