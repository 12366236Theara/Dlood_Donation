import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

  Widget bottom(String text , Color color){
  return TextButton(
                                    style: TextButton.styleFrom(
                                        minimumSize: const Size(1, 1),
                                        alignment: Alignment.center,
                                        backgroundColor: Colors.grey[100]),
                                    onPressed: () {},
                                    child: Text(
                                      text.tr,
                                      style: GoogleFonts.notoSansKhmer(
                                          height: 1,
                                          fontSize: 14,
                                          color: color),
                                    ),
                                  );
}