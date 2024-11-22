import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_LornPolinDetail_Donate/Detail_Donate_Screen.dart';

class Griteitems extends StatelessWidget {
  const Griteitems({super.key});

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
            elevation: 5,
            shadowColor: Colors.white,
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailDonateScreen(),
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
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Reject",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          "Donate",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                      ),
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
