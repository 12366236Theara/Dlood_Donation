import 'package:flutter/material.dart';

import 'package:kilo_health/Screen/Screen_RequestsDonationDetail/RequestsDonationDetail.dart';

class GriteitemsRD extends StatelessWidget {
  const GriteitemsRD({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemExtent: 214,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Card(
            elevation: 2,
            shadowColor: Colors.white,
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const Requestsdonationdetail(),
                          ));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset("lib/image/Profilegrit.jpg"),
                            const SizedBox(
                              width: 5,
                            ),
                            texts("Name")
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text(
                          "LORN POLIN",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Image.asset("lib/image/Location.jpg"),
                            const SizedBox(
                              width: 5,
                            ),
                            texts("Location"),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        texts("Phnom Panh, Cambodia"),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Image.asset("lib/image/time.jpg"),
                            const SizedBox(
                              width: 5,
                            ),
                            texts("Time"),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        texts("5 Min Ago"),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "B+",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 26),
                      ),
                      Image.asset(height: 50, "lib/image/Blood.jpg"),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Completed",
                            style: TextStyle(color: Colors.green, fontSize: 17),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget texts(String text) {
  return Text(
    text,
    style: const TextStyle(color: Colors.black, fontSize: 15),
  );
}
