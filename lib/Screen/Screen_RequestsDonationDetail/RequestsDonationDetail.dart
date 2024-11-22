import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_LornPolinDetail_Accepts/conpoment/text.dart';
import 'package:kilo_health/Screen/Screen_LornPolinDetail_Accepts/detail_Accepts.dart';

class Requestsdonationdetail extends StatelessWidget {
  const Requestsdonationdetail({super.key});

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
            "Requests Donation Detail",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            children: [
              TextDetail("lib/image/persont.jpg", "LORN POLIN"),
              const SizedBox(
                height: 10,
              ),
              lin(),
              const SizedBox(
                height: 45,
              ),
              TextDetail("lib/image/locationtt.jpg", "Phnom Penh Hospitalr"),
              const SizedBox(
                height: 10,
              ),
              lin(),
              const SizedBox(
                height: 45,
              ),
              TextDetail("lib/image/locationtt.jpg", "B+"),
              const SizedBox(
                height: 10,
              ),
              lin(),
              const SizedBox(
                height: 45,
              ),
              TextDetail("lib/image/calll.jpg", "012 123 123"),
              const SizedBox(
                height: 10,
              ),
              lin(),
              const SizedBox(
                height: 45,
              ),
              TextDetail("lib/image/note.jpg", "Add Note"),
              const SizedBox(
                height: 10,
              ),
              lin(),
            ],
          ),
        ));
  }
}
