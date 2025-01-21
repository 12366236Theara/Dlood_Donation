import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilo_health/Screen/Language_Screen/langauge_screen.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/Login_Screen/Login_Screen.dart';

import 'package:kilo_health/Screen/ScreenSignIn_SignUp/signUp_Screen/signUp_Screen.dart';
import 'package:kilo_health/translate_language/translation.dart';

class SigninSignup extends StatefulWidget {
  const SigninSignup({super.key});

  @override
  State<SigninSignup> createState() => _SigninSignupState();
}

class _SigninSignupState extends State<SigninSignup> {
  final PageController _pageController = PageController(initialPage: 0);
  bool isChagneIndex = true;
  void _chagnindex(int index) {
    setState(() {
      isChagneIndex = index == 0;
    });
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  // const WelcomeLogin(),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    height: 270,
                    width: double.infinity,
                    color: Colors.blue,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 5,
                          top: 1,
                          child: IconButton(
                            icon: const Icon(
                              Icons.language,
                              size: 30,
                            ), // Try a simple icon
                            onPressed: () {
                              Translation.clearlanguage();
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const LangaugeScreen(),
                                  ),
                                  (Route<dynamic> route) => false);
                            },
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              fit: BoxFit.cover,
                              height: 80,
                              isChagneIndex
                                  ? "lib/image/catocary/Vector.png"
                                  : "lib/image/catocary/groupsignpimage.png",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                                isChagneIndex
                                    ? "welcome_login_to_get_starded".tr
                                    : "welcome".tr,
                                style: GoogleFonts.notoSansKhmer(
                                    color: Colors.white, fontSize: 16)),
                            // Text(
                            //   isChagneIndex ? "welcome!_Login  ".tr : "wecome_singup".tr,
                            //   style: const TextStyle(
                            //       fontSize: 16, color: Colors.white),
                            // )
                          ],
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    top: 200,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          // Buttom(),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 5, top: 10),
                            child: Container(
                              height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color:
                                      const Color.fromARGB(255, 242, 237, 237)),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () => _chagnindex(0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: isChagneIndex
                                                ? Colors.white
                                                : null,
                                          ),
                                          child: Text("login".tr,
                                              style: GoogleFonts.notoSansKhmer(
                                                  color: Colors.blue,
                                                  fontSize: 18)),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () => _chagnindex(1),
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: !isChagneIndex
                                                ? Colors.white
                                                : null,
                                          ),
                                          child: Text("sign_up".tr,
                                              style: GoogleFonts.notoSansKhmer(
                                                  color: Colors.blue,
                                                  fontSize: 18)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                              child: PageView(
                            controller: _pageController,
                            onPageChanged: (index) {
                              setState(() {
                                isChagneIndex = index == 0;
                              });
                            },
                            children: const [
                              LoginScreen(),
                              SignupScreen(),
                            ],
                          )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
