import 'package:flutter/material.dart';

import 'package:kilo_health/Screen/Screen_CreateARequest/conpoment/TextFiald.dart';

import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';

class ScreeenCreatearequest extends StatelessWidget {
  const ScreeenCreatearequest({super.key});

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
          "Create A Request",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                Textfiele(
                  text: ' Name',
                  image: "lib/image/persont.jpg",
                ),
                SizedBox(
                  height: 20,
                ),
                Textfiele(
                  text: 'Location',
                  image: "lib/image/locationtt.jpg",
                ),
                SizedBox(
                  height: 20,
                ),
                Textfiele(
                  text: 'Blood Type',
                  image: "lib/image/booling.jpg",
                ),
                SizedBox(
                  height: 20,
                ),
                Textfiele(
                  text: 'Mobile',
                  image: "lib/image/calll.jpg",
                ),
                SizedBox(
                  height: 20,
                ),
                Textfiele(
                  text: 'Add Note',
                  image: "lib/image/note.jpg",
                ),
              ],
            ),
            Column(
              children: [
                ConpomentButtom(
                  title: "Request",
                  onTa: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
