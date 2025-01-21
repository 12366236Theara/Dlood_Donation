import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kilo_health/Screen/OTPverification_Screen/conpoment/codeOTP.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';

class Otpverification extends StatefulWidget {
  final String phone;

  const Otpverification({
    super.key,
    required this.phone,
  });

  @override
  State<Otpverification> createState() => _OtpverificationState();
}

class _OtpverificationState extends State<Otpverification>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _skewAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _skewAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 1, end: 1.5), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 1.5, end: 1), weight: 50),
    ]).animate(_controller);

    _rotationAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0, end: 0.1), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 0.1, end: 0), weight: 50),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "otp_verification".tr, // Translation key
          style:   GoogleFonts.notoSansKhmer(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Get.to(SigninSignup());
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(alignment: Alignment.center, children: [
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..scale(_skewAnimation.value)
                        ..rotateZ(_rotationAnimation.value),
                      child: Image.asset(
                        'lib/image/Anima.jpg',
                        fit: BoxFit.cover,
                     
                      ),
                    );
                  },
                ),
                Image.asset(height: 200, "lib/image/animationiage.gif"),
              ]),
             
              Text(
                "otp_description_1".tr, // Translation key for "We will send you one time OTP to this"
                style:   GoogleFonts.notoSansKhmer(color: Colors.black, fontSize: 16),
              ),
              Text(
                "otp_description_2".tr,style:  GoogleFonts.notoSansKhmer(), // Translation key for "number"
              ),
              
              Codeotp(
                phone: widget.phone,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
