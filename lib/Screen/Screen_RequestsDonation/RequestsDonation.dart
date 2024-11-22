import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_RequestsDonation/conpoment/GriteItem.dart';

class Requestsdonation extends StatelessWidget {
  const Requestsdonation({super.key});

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
          "Requests Donation ",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Griteitem(),
            ],
          ),
        ),
      ),
    );
  }
}
