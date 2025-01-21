import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/Screen/home_Sreen/conpoment/gritItem.dart';

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
        title: Text(
          "request_donations".tr,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(bottom: 10, ),
        child: Grititem(),
      ),
    );
  }
}
