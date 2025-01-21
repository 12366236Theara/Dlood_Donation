import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/Screen/Screen_LornPolinDetail_Accepts/conpoment/text.dart';
import 'package:kilo_health/Screen/Screen_LornPolinDetail_Accepts/detail_Accepts.dart';

class DetailRequistdonation extends StatelessWidget {
  String fistname;
  String lastname;
  String phone;
  String location;
  String note;
  String typeblood;

  DetailRequistdonation(
      {super.key,
      required this.location,
      required this.phone,
      required this.fistname,
      required this.lastname,
      required this.note,
      required this.typeblood});

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
         
          title: Text(
            "reuqestdonationdatail".tr,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            children: [
              TextDetail("lib/image/profile-fills.png", "$fistname $lastname"),
              const SizedBox(
                height: 10,
              ),
              lin(),
              const SizedBox(
                height: 45,
              ),
              TextDetail("lib/image/map-hospital.png", location),
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
        ));
  }
}
