import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kilo_health/Screen/Screen_LornPolinDetail_Donate/Detail_Donate_Screen.dart';
import 'package:kilo_health/Screen/reports_Screen/conpoment/detail_RequistDonation.dart';

import 'package:kilo_health/controller/donation_blood_Controller.dart';

class Reuestdonation extends StatelessWidget {
  const Reuestdonation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DonationBloodController());
    return Obx(
      () => controller.isloading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.only(
                right: 10,
                left: 10,
              ),
              child: ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.donationBlood.length,
                itemBuilder: (context, index) {
                  final data = controller.donationBlood[index];

                  final dateFormat = _getTime(data.createdAt);
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailRequistdonation(
                              fistname: data.createdBy!.firstName ?? '',
                              lastname: data.createdBy!.lastName ?? "",
                              location: data.location!.address ?? '',
                              note: data.note ?? '',
                              phone: data.phoneNumber ?? '',
                              typeblood: data.bloodType ?? '',
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
                                      "${data.createdBy!.lastName} ${data.createdBy!.firstName}",
                                      style: const TextStyle(
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
                                    texts(data.location!.address ?? 'address',
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
                                      style: const TextStyle(
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
                                      dateFormat,
                                    ), // Display formatted time
                                    const SizedBox(
                                      width: 10,
                                    ),

                                    Text(
                                      data.status ?? "status",
                                      style: const TextStyle(
                                        color: Color(0xffE59600),
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
}

String _getTime(String? time) {
  if (time == null) {
    return 'Unknown time';
  }
  try {
    DateTime dateTime = DateTime.parse(time);
    return DateFormat(' HH:mm:').format(dateTime);
  } catch (e) {
    return 'Unknown time';
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
