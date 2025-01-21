import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kilo_health/controller/history_controller.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({super.key});

  @override
  Widget build(BuildContext context) {
    final HistoryController controllerhistory = Get.put(HistoryController());
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
          "notification".tr,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Obx(
        () => controllerhistory.isLooding.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: controllerhistory.posts.length,
                itemBuilder: (context, index) {
                  final data = controllerhistory.posts[index];
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  data.bloodType ?? '',
                                  style: const TextStyle(fontSize: 18),
                                ),
                                Image.asset("lib/image/Blooditem.png"),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${data.createdBy!.firstName ?? ""} ${data.createdBy!.lastName ?? ""}',
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                    width: 80,
                                    child: Text(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      data.location!.address ?? "",
                                    )),
                                Text(data.phoneNumber ?? ''),
                                Text(data.note ?? ''),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ViewDetail(data.status ?? ""),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Share(),
                                  ],
                                )
                              ],
                            ),
                            Text(_formatTime(data.createdAt))
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}

String _formatTime(String? time) {
  if (time == null) {
    return "No time available";
  }
  try {
    // Convert the string to DateTime
    DateTime parsedTime = DateTime.parse(time);
    // Format the DateTime object into a more readable format
    return DateFormat(' kk:mm')
        .format(parsedTime); // Example: 2024-12-12 – 15:45
  } catch (e) {
    return "Invalid date format";
  }
}

Widget ViewDetail(String text) {
  return Container(
    alignment: Alignment.center,
    height: 32,
    width: 89,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.grey[200]),
    child: Text(
      text,
      style: const TextStyle(color: Colors.blue),
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
