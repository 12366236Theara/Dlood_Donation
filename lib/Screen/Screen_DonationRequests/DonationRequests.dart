import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_DonationRequests/conpoment/GriteItems.dart';

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
        actions: const [
          Icon(size: 27, color: Colors.white, Icons.notifications),
        ],
        title: const Text(
          "Donation Requests ",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [Griteitems()],
          ),
        ),
      ),
    );
  }
}
