import 'package:flutter/material.dart';

import 'package:kilo_health/Screen/Screen_LornPolinDetail_Accepts/conpoment/buttom.dart';
import 'package:kilo_health/Screen/Screen_LornPolinDetail_Accepts/conpoment/text.dart';

import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';


class DetailAccepts extends StatelessWidget {
  const DetailAccepts({super.key});

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
          "Lorn Polin Detail",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Stack(
        children: [
          // Background image container
          Padding(
            padding: const EdgeInsets.only(left: 0, top: 100, right: 100),
            child: Container(
              height: 600,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("lib/image/syrings.jpg"),
                ),
              ),
            ),
          ),
          // Overlaying content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                   
                    TextDetail("lib/image/persont.jpg", "LORN POLIN" ),
                    const SizedBox(
                      height: 10,
                    ),
                    lin(),
                     const SizedBox(
                      height: 30,
                    ),
                   
                     TextDetail("lib/image/locationtt.jpg", "Phnom Penh Hospitalr" ),
                    const SizedBox(
                      height: 10,
                    ),
                    lin(),
                    const SizedBox(
                      height: 30,
                    ),
                      TextDetail("lib/image/locationtt.jpg", "B+" ),
                    const SizedBox(
                      height: 10,
                    ),
                    lin(),
                   
                  
                  
                    const SizedBox(
                      height: 20,
                    ),
                      TextDetail("lib/image/calll.jpg", "012 123 123" ),
                    const SizedBox(
                      height: 10,
                    ),
                    lin(),
                    
                   
                    const SizedBox(
                      height: 20,
                    ),
                         TextDetail("lib/image/note.jpg", "Add Note" ),
                    const SizedBox(
                      height: 10,
                    ),
                    lin(),
                  
                  ],
                ),
                Column(
                  children: [
                    ConpomentButtom(
                      title: "Accepts",
                      onTa: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Buttoms(
                        title: "Cancel",
                        onTa: () {
                          Navigator.pop(context);
                        }),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget lin() {
  return Container(
    width: double.infinity,
    height: 1,
    color: Colors.grey,
  );
}
