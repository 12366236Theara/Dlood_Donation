import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kilo_health/Screen/oTP_Screen/conpoment/countDow.dart';
import 'package:kilo_health/controller/otpVerification_controller.dart';

class CodecOtp extends StatefulWidget {
  final String phone;
  final String password;
  final String confirmpassword;

  const CodecOtp({
    super.key,
    required this.phone,
    required this.password,
    required this.confirmpassword,
  });

  @override
  State<CodecOtp> createState() => _CodecOtpState();
}

class _CodecOtpState extends State<CodecOtp> {
  final OtpverificationController controller =
      Get.put(OtpverificationController());

  late List<TextEditingController> controllerOTp;
  @override
  void initState() {
    controllerOTp = List.generate(6, (index) => TextEditingController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(6, (index) {
              return Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 49,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: controllerOTp[index],
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    autofocus: index == 0,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      counterText: "", // Hides the counter
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 6) {
                        FocusScope.of(context).nextFocus();
                      }
                      if (value.isEmpty && index > 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                  ),
                ),
              );
            }),
          ),
        ),
        const SizedBox(height: 10),
        const Countdow(),
        ElevatedButton(
          onPressed: () {
            final otp = controllerOTp.map((controller) => controller.text).join();
            controller.PostController(
                phone: widget.phone,
                password: widget.password,
                confirmpassword: widget.confirmpassword,
                otp: otp);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            "verify".tr,
            style: GoogleFonts.notoSansKhmer(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
