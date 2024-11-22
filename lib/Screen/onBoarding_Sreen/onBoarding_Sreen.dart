import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/Language_Screen/langauge_screen.dart';
import 'package:kilo_health/model/model_OnBoading.dart';
import 'package:kilo_health/Screen/onBoarding_Sreen/conpoment/SplashAnimation.dart';

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
          left: 20,
          top: 50,
          bottom: 50,
        ),
        child: Column(
          children: [
            Row(
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
                  onPressed: () {
                    setState(() {
                      if (_controller.page == model.length - 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LangaugeScreen(),
                            ));
                      }
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 10),
                          curve: Curves.bounceIn);
                    });
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
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
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "lib/image/noto_man-superhero.jpg",
                          height: 350,
                          fit: BoxFit.cover,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Empower Generosity",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Effortlessly organize your tasks and projects with our intuitive app, designed to boost productivity.",
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "lib/image/Blood.jpg",
                          height: 350,
                          fit: BoxFit.cover,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Empower Generosity",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Effortlessly organize your tasks and projects with our intuitive app, designed to boost productivity.",
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                            left: 160,
                          ),
                          child: SplashAnimation()),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "lib/image/imagesliper (2).jpg",
                              height: 350,
                              fit: BoxFit.cover,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Empower Generosity",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  "Effortlessly organize your tasks and projects with our intuitive app, designed to boost productivity.",
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
