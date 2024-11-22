import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_EditeProfile/conpoment/textfiald_Edite.dart';
import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';

class Editeprofile extends StatelessWidget {
  const Editeprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          "Edit Profile ",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                TextfieldEdite(
                  text: "Fisrt Name ",
                  image: "lib/image/persont.jpg",
                ),
                SizedBox(
                  height: 25,
                ),
                TextfieldEdite(
                  text: "Last Name ",
                  image: "lib/image/persont.jpg",
                ),
                SizedBox(
                  height: 25,
                ),
                TextfieldEdite(
                  text: "Email ID ",
                  image: "lib/image/Email.jpg",
                ),
                SizedBox(
                  height: 25,
                ),
                TextfieldEdite(
                  text: "Mobile Number ",
                  image: "lib/image/calll.jpg",
                ),
                SizedBox(
                  height: 25,
                ),
                TextfieldEdite(
                  text: "Location ",
                  image: "lib/image/locationtt.jpg",
                ),
              ],
            ),
            ConpomentButtom(
              title: "Update",
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
