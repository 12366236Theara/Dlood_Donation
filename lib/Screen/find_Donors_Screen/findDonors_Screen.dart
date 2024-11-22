import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_DonorDetail/ScreenDonor_Detail.dart';
import 'package:kilo_health/model/Screen_ProfileDonor/Screen_ProfileDonor.dart';
import 'package:kilo_health/conpoment/text_Field.dart';

class FinddonorsScreen extends StatelessWidget {
  const FinddonorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 25,
          )
        ],
        backgroundColor: Colors.blue,
        title: const Text(
          "Find Donors",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
        ),
        child: Column(
          children: [
            const Textfial(text: "Name", image: "lib/image/Search.jpg"),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemExtent: 100,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0.9,
                    shadowColor: Colors.black,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ScreenProfiledonor(),
                                  ));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("lib/image/image.jpg"),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ScreendonorDetail(),
                                  ));
                            },
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Nallarasi",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                            "lib/image/map-hospital (1).jpg"),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text("Phnom Panh Hspical"),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      "AB+",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Image.asset(
                                        height: 30, "lib/image/Blood.jpg")
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
