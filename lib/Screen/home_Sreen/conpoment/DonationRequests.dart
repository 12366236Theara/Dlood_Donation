import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kilo_health/Screen/home_Sreen/conpoment/GriteItem_DonationRequests.dart';

class Donationrequests extends StatelessWidget {
  const Donationrequests({super.key});

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
        title: Text(
          "donation_requests".tr,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(bottom: 10, ),
        child: GriteitemDonationrequests(),
      ),
    );
  }
}
