import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Language_Screen/langauge_screen.dart';
import 'package:kilo_health/model/model_OnBoading.dart';
import 'package:kilo_health/Screen/onBoarding_Sreen/conpoment/SplashAnimation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  final List<ModelOnboading> model;

  const OnboardingScreen({
    super.key,
    required this.model,
  });

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  int currentindex = 0;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          bottom: 50,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 10,
                    child: Row(
                      children: List.generate(
                        widget.model.length, // `model` is now defined
                        (index) => buildDot(index, context),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      if (currentindex == widget.model.length - 1) {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        await prefs.setBool('onbooldin_completed', true);
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LangaugeScreen(),
                          ),
                          (Route<dynamic> route) => false,
                        );
                      } else {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    child: Text(
                      currentindex == widget.model.length - 1
                          ? "Get Started"
                          : "Next",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 150),
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    currentindex = index;
                  });
                },
                children: [
                  buildOnboardingPage(
                    image: 'lib/image/notomansuperhero.png',
                    title: "Empower Generosity",
                    description:
                        "Effortlessly organize your tasks and projects with our intuitive app, designed to boost productivity.",
                  ),
                  buildOnboardingPage(
                    image: "lib/image/imagesliper (2).jpg",
                    title: "Empower Generosity",
                    description:
                        "Effortlessly organize your tasks and projects with our intuitive app, designed to boost productivity.",
                  ),
                  Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 190),
                        child: SplashAnimation(),
                      ),
                      buildOnboardingPage(
                        image: "lib/image/imagesliper (2).jpg",
                        title: "Empower Generosity",
                        description:
                            "Effortlessly organize your tasks and projects with our intuitive app, designed to boost productivity.",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOnboardingPage({
    required String image,
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          image,
          height: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 19,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildDot(int index, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 15,
      width: currentindex == index ? 20 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.5),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
