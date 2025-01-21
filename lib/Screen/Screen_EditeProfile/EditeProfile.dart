import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/Screen/Screen_EditeProfile/conpoment/textfiald_Edite.dart';
import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';

class Editeprofile extends StatelessWidget {
  const Editeprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          "Edit Profile ",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                TextfieldEdite(
                  text: "first_name".tr,
                  image: "lib/image/profile-fills.png",
                ),
                const SizedBox(
                  height: 25,
                ),
                TextfieldEdite(
                  text: "last_name".tr,
                  image: "lib/image/profile-fills.png",
                ),
                const SizedBox(
                  height: 25,
                ),
                TextfieldEdite(
                  text: "email".tr,
                  image: "lib/image/Email.png",
                ),
                const SizedBox(
                  height: 25,
                ),
                TextfieldEdite(
                  text: "phone".tr,
                  image: "lib/image/calldetail.png",
                ),
                 SizedBox(
                  height: 25,
                ),
                TextfieldEdite(
                  text: "lacation".tr,
                  image: "lib/image/Locationitem.png",
                ),
              ],
            ),
            ConpomentButtom(
              title: "update".tr,
              onTa: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
