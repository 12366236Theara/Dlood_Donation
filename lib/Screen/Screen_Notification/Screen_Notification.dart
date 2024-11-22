import 'package:flutter/material.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({super.key});

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
        actions: const [
          Icon(size: 27, color: Colors.white, Icons.notifications),
        ],
        title: const Text(
          "Notification",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
        child: ListView.builder(
          itemCount: 10,
          itemExtent: 150,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("lib/image/Frame 10.jpg"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Donation Update",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text("Your recent donation has been  "),
                        const Text("successfully processed"),
                        const SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: [
                            ViewDetail(),
                            const SizedBox(
                              width: 20,
                            ),
                            Share(),
                          ],
                        )
                      ],
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("23min"),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget ViewDetail() {
  return Container(
    alignment: Alignment.center,
    height: 32,
    width: 89,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.grey[200]),
    child: const Text(
      "View Detail",
      style: TextStyle(color: Colors.blue),
    ),
  );
}

Widget Share() {
  return Container(
    alignment: Alignment.center,
    height: 32,
    width: 52,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.grey[200]),
    child: const Text(
      "Share",
      style: TextStyle(color: Colors.blue),
    ),
  );
}
