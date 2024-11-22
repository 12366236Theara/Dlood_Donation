import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Screen_SignIn/Screen_SignIn.dart';
import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';
import 'package:kilo_health/Screen/oTP_Screen/conpoment/codec_OTP.dart';
import 'package:kilo_health/Screen/oTP_Screen/conpoment/textimage.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late Timer _timer;
  int _seconds = 120; // Countdown time in seconds

  @override
  void initState() {
    super.initState();
    _startTimer(); // Start the countdown timer
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to prevent memory leaks
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        setState(() {
          _seconds--; // Decrease the countdown time
        });
      } else {
        timer.cancel(); // Stop the timer when it reaches 0
      }
    });
  }

  String _formatTime(int seconds) {
    final int minutes = seconds ~/ 60;
    final int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 200, bottom: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Textimage(),
                const SizedBox(height: 10),
                const CodecOtp(),
                const SizedBox(height: 10),
                Text(
                  _formatTime(_seconds), // Display the formatted time
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don’t receive code?"),
                    TextButton(
                      onPressed: _seconds == 0
                          ? () {
                              // Reset the timer when the "Re-send" is clicked
                              setState(() {
                                _seconds = 120; // Reset countdown
                              });
                              _startTimer();
                            }
                          : null, // Disable button until countdown is 0
                      child: const Text(
                        " Re-send",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            ConpomentButtom(
              title: "Submit",
              onTa: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenSignin(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
