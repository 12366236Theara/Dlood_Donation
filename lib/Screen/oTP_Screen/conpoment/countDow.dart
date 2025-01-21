import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Countdow extends StatefulWidget {
  const Countdow({super.key});

  @override
  State<Countdow> createState() => _CountdowState();
}

class _CountdowState extends State<Countdow> {
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
    return Column(
      children: [
        Text(
          _formatTime(_seconds), // Display the formatted time
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "dont_receive_code".tr,
              style: GoogleFonts.notoSansKhmer(),
            ),
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
              child: Text(
                "resend".tr,
                style: GoogleFonts.notoSansKhmer(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
