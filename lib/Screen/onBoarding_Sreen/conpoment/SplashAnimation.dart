import 'package:flutter/material.dart';

class SplashAnimation extends StatefulWidget {
  const SplashAnimation({super.key});

  @override
  _SplashAnimationState createState() => _SplashAnimationState();
}

class _SplashAnimationState extends State<SplashAnimation> {
  bool isVisible = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: AnimatedOpacity(
        duration: const Duration(seconds: 01),
        opacity: isVisible ? 0.1 : 0.0,
        child: Image.asset(
          fit: BoxFit.cover,
          "lib/image/Groupqur.png",
        ),
      ),
    );
  }
}
