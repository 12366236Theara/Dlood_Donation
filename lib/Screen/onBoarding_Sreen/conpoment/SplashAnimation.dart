import 'package:flutter/material.dart';

class SplashAnimation extends StatefulWidget {
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
    return Center(
      child: AnimatedOpacity(
        duration:  Duration(seconds: 01),
        opacity: isVisible ? 0.1 : 0.0,
        child: Image.asset(
          
          fit: BoxFit.cover,
          "lib/image/sliper.jpg",
          
          
        ),
      ),
    );
  }
}
