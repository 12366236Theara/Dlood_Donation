import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';
import 'package:kilo_health/Screen/main_Sreen/main_Sreen.dart';
import 'package:kilo_health/model/model_OnBoading.dart';
import 'package:kilo_health/Screen/onBoarding_Sreen/onBoarding_Sreen.dart';
import 'package:kilo_health/token/token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplasSreen extends StatelessWidget {
  const SplasSreen({super.key});

  Future<bool> _checkcompleted() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('onbooldin_completed') ?? false;
  }

  // Future<bool> _checklogin() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.getBool('checklogin') ?? false;
  // }

  Future<bool> _chicklanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('LangaugeScreen') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    Token token = Get.put(Token());
    print("===============Token: -- $token" );
    return AnimatedSplashScreen(
      splashIconSize: 400,
      splashTransition: SplashTransition.scaleTransition,
      splash: Image.asset(
        height: 300,
        width: 300,
        "lib/image/Logokiloit.png",
      ),
      nextScreen: FutureBuilder(
        future: Future.wait([
          token.getToken('acces_token'),
          // _checklogin(),
          _checkcompleted(),
          _chicklanguage(),
        ]),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else {
            final tokendata = snapshot.data![0];
            final completeddata = snapshot.data![1];
            final completeLanguage = snapshot.data![2];
            print("========================= Splash Screen Token: $tokendata");
            
            // Handle the login and token conditions
            if (tokendata != null && tokendata.isNotEmpty) {
              return const MainSreen(indexviewPage: 0); // Logged in with valid token
            } else {
              // Not logged in, show the correct screen
              if (completeddata && completeLanguage) {
                return const SigninSignup(); // Onboarding and language done, show SignIn/SignUp screen
              } else {
                return OnboardingScreen(model: model); // If onboarding or language not done, show Onboarding
              }
            }
          }
        },
      ),
    );
  }
}
