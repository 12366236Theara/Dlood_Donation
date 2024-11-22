import 'package:flutter/material.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/Login_Screen/Login_Screen.dart';

import 'package:kilo_health/Screen/ScreenSignIn_SignUp/signUp_Screen/signUp_Screen.dart';

class SigninSignup extends StatefulWidget {
  const SigninSignup({super.key});

  @override
  State<SigninSignup> createState() => _SigninSignupState();
}

class _SigninSignupState extends State<SigninSignup> {
  bool isChagneIndex = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                // const WelcomeLogin(),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 70),
                  height: 300,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Image.asset(
                        fit: BoxFit.cover,
                        height: 80,
                        isChagneIndex
                            ? "lib/image/profile.jpg"
                            : "lib/image/Signup.jpg",
                        color: const Color.fromARGB(255, 11, 142, 249),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        isChagneIndex ? "Welcome! Login to get " : "Wecome",
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        isChagneIndex ? "Welcome! Login  " : "Wecome singUp",
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 230,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 700,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          // Buttom(),
                          Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color:
                                    const Color.fromARGB(255, 242, 237, 237)),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChagneIndex = true;
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 55,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: isChagneIndex == true
                                            ? Colors.white
                                            : null,
                                      ),
                                      child: const Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChagneIndex = false;
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 55,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: isChagneIndex == false
                                            ? Colors.white
                                            : null,
                                      ),
                                      child: const Text(
                                        "Sign up",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.blue),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: isChagneIndex == true
                                ? const LoginScreen()
                                : const SignupScreen(),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
