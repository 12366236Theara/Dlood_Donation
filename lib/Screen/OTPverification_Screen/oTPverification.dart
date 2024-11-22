import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/OTPverification_Screen/conpoment/codeOTP.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';

class Otpverification extends StatefulWidget {
  const Otpverification({super.key});

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

    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true); // Loop the animation

    // Define Scaling Animation
    _skewAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 1, end: 1.5), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 1, end: 1.5), weight: 50),
    ]).animate(_controller);

    // Define Rotation Animation (in radians)
    _rotationAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween(begin: 1, end: 0),
        weight: 50,
      ), // Rotate to ~28 degrees
      TweenSequenceItem(tween: Tween(begin: 1.5, end: 0), weight: 50)
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller
        .dispose(); // Clean up the controller when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "OTP Verification",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SigninSignup(),
                  ));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        actions: const [Icon(color: Colors.white, Icons.notifications)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(alignment: Alignment.center, children: [
                // Skew animated image
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
                        height: 300,
                        width: 300,
                      ),
                    );
                  },
                ),

                // Static GIF image
                Image.asset(height: 200, "lib/image/animationiage.gif"),
                // lib/image/Anima.jpg
              ]),
              const SizedBox(height: 5),
              const Text(
                "We will send you one time OTP this",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              const Text("number"),
              const SizedBox(height: 5),
              const Text(
                "+855 97749666",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Codeotp(),
            ],
          ),
        ),
      ),
    );
  }
}
