import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';

import 'package:kilo_health/controller/otp_controller.dart';

class Codeotp extends StatefulWidget {
  final String phone;

  const Codeotp({
    super.key,
    required this.phone,
  });

  @override
  _CodeotpState createState() => _CodeotpState();
}

class _CodeotpState extends State<Codeotp> {
  late List<TextEditingController> otpControllers;

  @override
  void initState() {
    super.initState();
    otpControllers = List.generate(6, (index) => TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    final OtpController otpController = Get.put(OtpController());
    final TextEditingController phoneController = TextEditingController();

    phoneController.text = widget.phone;

    return Obx(() => otpController.isLoading.value
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFormField(
              controller: phoneController,
              readOnly: true,
              decoration: InputDecoration(
                labelStyle:  GoogleFonts.notoSansKhmer(),
                labelText: "phone".tr, // Translation key for "Phone"
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(6, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 1,
                            offset: Offset(0, 0),
                          )
                        ],
                      ),
                      child: TextField(
                        controller: otpControllers[index],
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          
                          if (value.isNotEmpty && index < 5) {
                            FocusScope.of(context).nextFocus();
                          } else if (value.isEmpty && index > 0) {
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
            ElevatedButton(
              onPressed: () {
                // Fake rout
                Get.to(SigninSignup());
                final otp = otpControllers
                    .map((controller) => controller.text.trim())
                    .join();
                final phone = phoneController.text.trim();
                otpController.Otpverify(phone, otp, context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "verify_otp".tr, // Translation key for "Verify OTP"
                style:   GoogleFonts.notoSansKhmer(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
