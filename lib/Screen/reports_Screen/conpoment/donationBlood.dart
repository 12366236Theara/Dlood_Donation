import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:intl/intl.dart';
import 'package:kilo_health/Screen/Screen_LornPolinDetail_Accepts/detail_Accepts.dart';
import 'package:kilo_health/Screen/reports_Screen/conpoment/detail_DonationRequists.dart';
import 'package:kilo_health/controller/controller_getrequest.dart';

class Donationblood extends StatelessWidget {
  const Donationblood({super.key});

  @override
  Widget build(BuildContext context) {
    final ControllerGetrequest getcontroller = Get.put(ControllerGetrequest());
    getcontroller.getcontroller();
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
        ),
        child: getcontroller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: getcontroller.model_GetRequest.length,
                itemBuilder: (context, index) {
                  if (getcontroller.model_GetRequest.isEmpty) {
                    return const Text("No Data Available");
                  }
                  final data = getcontroller.model_GetRequest[index];

                  // Convert the createdAt time string to a DateTime object
                  String formattedTime = _formatTime(data.createdAt);
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailDonationrequists(
                              fistname: data.createdBy!.firstName ?? '',
                              lastname: data.createdBy!.lastName ?? '',
                              location: data.location!.address ?? "",
                              typeblood: data.bloodType ?? '',
                              phone: data.phoneNumber ?? '',
                              note: data.note ?? '',
                            ),
                          ));
                    },
                    child: Card(
                      elevation: 1,
                      shadowColor: Colors.white,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                            "lib/image/Profileitem.png"),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        texts("name".tr, Colors.black, 15)
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "${data.createdBy!.firstName} ${data.createdBy!.lastName}",
                                      style: GoogleFonts.notoSansKhmer(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                            "lib/image/Locationitem.png"),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        texts("lacation".tr, Colors.black, 15),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    texts(data.location?.address ?? "lacation",
                                        Colors.black, 15),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset("lib/image/timeitem.png"),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        texts("time".tr, Colors.black, 15),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      data.bloodType ?? 'blood',
                                      style: GoogleFonts.notoSansKhmer(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                        height: 40, "lib/image/Blooditem.png"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      formattedTime,
                                    ), // Display formatted time
                                    const SizedBox(
                                      width: 10,
                                    ),

                                    Text(
                                      data.status ?? "status",
                                      style: GoogleFonts.notoSansKhmer(
                                        color: const Color(0xffE59600),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  data.requestType ?? '',
                                  style: const TextStyle(
                                      color: Colors.blue, fontSize: 18),
                                )
                              ],
                            )
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

  // Method to format time
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
}

Widget texts(String text, Color color, double size) {
  return SizedBox(
    width: 130,
    child: Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.notoSansKhmer(color: color, fontSize: size),
    ),
  );
}
// yyyy/MM/d
