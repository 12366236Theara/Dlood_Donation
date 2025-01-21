import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';
import 'package:kilo_health/Screen/Screen_EditeProfile/EditeProfile.dart';
import 'package:kilo_health/Screen/Screen_Profile/conpoment/Carte.dart';
import 'package:kilo_health/Screen/Screen_Profile/conpoment/OnOff_Buttom.dart';
import 'package:kilo_health/Screen/Screen_Setting/Screnn_Setting.dart';
import 'package:kilo_health/Screen/Screen_Setting/conpoment/property.dart';
import 'package:kilo_health/controller/profile_controller.dart';
import 'package:kilo_health/token/token.dart';
import 'package:kilo_health/translate_language/translation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({super.key});
  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  final controller = Get.put(ProfileController(Get.find()));
  @override
  final Token _token = Get.put(Token());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "profile".tr,
          style: GoogleFonts.notoSansKhmer(color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Obx(
            () => controller.islooding.value
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : SingleChildScrollView(
                    child: Obx(
                      () => Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const Editeprofile(),
                                      ));
                                },
                                child: Text(
                                  "edit".tr,
                                  style:
                                      GoogleFonts.notoSansKhmer(fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                          const CircleAvatar(
                            radius: 60,
                            foregroundImage:
                                AssetImage("lib/image/imageProfile.jpg"),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            '${controller.modelProfile.value.firstName} ${controller.modelProfile.value.lastName}',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "lib/image/calls.jpg",
                                color: Colors.red,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                '${controller.modelProfile.value.phone}',
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Carte("0+", "blood_type".tr),
                              line(),
                              Carte("05", "donated".tr),
                              line(),
                              Carte("06", "request".tr),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const OnOffButton(),
                          const SizedBox(
                            height: 20,
                          ),
                          Propertysetting(
                              'lib/image/Invite.png', "invalid_friend".tr),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Editeprofile(),
                                  ));
                            },
                            child: Propertysetting(
                                'lib/image/edit.png', "edit_profile".tr),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ScrennSetting(),
                                    ));
                              },
                              child: Propertysetting(
                                  'lib/image/Setting.png', "settings".tr)),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                              onTap: () {
                                // _loginController.cleanAccessToken();
                                Get.dialog(AlertDialog(
                                  title: Text('confirm_sign_out'.tr),
                                  content: Text("are_you_sure_sign_out".tr),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        child: Text('cancel'.tr)),
                                    TextButton(
                                        onPressed: () async {
                                          await _token.cleanAccessToken();
                                          Translation.clearlanguage();

                                          Get.offAll(const SigninSignup());
                                          // Navigator.pushAndRemoveUntil(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //     builder: (context) =>
                                          //         const SigninSignup(),
                                          //   ),
                                          //   (Route<dynamic> route) => false,
                                          // );
                                        },
                                        child: Text("ok".tr))
                                  ],
                                ));
                              },
                              child: Propertysetting(
                                  'lib/image/Signout.png', "signout".tr)),
                        ],
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

Widget line() {
  return Container(
    height: 54,
    width: 1,
    color: Colors.grey,
  );
}
