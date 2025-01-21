import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilo_health/Screen/OTPverification_Screen/oTPverification.dart';

import 'package:kilo_health/Screen/ScreenSignIn_SignUp/signUp_Screen/conpoment/textField.dart';

import 'package:kilo_health/Screen/ScreenSignIn_SignUp/SignIn_SignUp.dart';

import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';
import 'package:kilo_health/conpoment/textfield_password.dart';
import 'package:kilo_health/controller/signUp_controller.dart';
import 'package:kilo_health/repositories/userRepositories.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerfisrtname =
        TextEditingController(text: "Theea");
    final TextEditingController controllerlastname =
        TextEditingController(text: "thhe");
    final TextEditingController controllerphone =
        TextEditingController(text: "0123456789");
    final TextEditingController controllerpassword =
        TextEditingController(text: "12345");
    final TextEditingController controllerconfirmPassword =
        TextEditingController(text: "12345");
    SignUpController controllerSignup =
        Get.put(SignUpController(Get.find<UserRepositories>()));

    final formKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Form(
        key: formKey,
        child: Obx(
          () => controllerSignup.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Textfields(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'first_name_required'.tr;
                          }
                          return null;
                        },
                        keys: const Key("first_name"),
                        controller: controllerfisrtname,
                        keytype: TextInputType.text,
                        text: 'first_name'.tr,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Textfields(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'last_name_required'.tr;
                          }
                          return null;
                        },
                        keys: const Key("last_name"),
                        keytype: TextInputType.text,
                        controller: controllerlastname,
                        text: 'last_name'.tr,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Textfields(
                        keys: const Key("phone"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'phone_number_required'.tr;
                          }
                          return null;
                        },
                        controller: controllerphone,
                        keytype: TextInputType.phone,
                        text: 'phone_number'.tr,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextfieldPassword(
                        keys: const Key(''),
                        validatior: (value) {
                          if (value == null || value.isEmpty) {
                            return 'password_required'.tr;
                          }
                          return null;
                        },
                        controller: controllerpassword,
                        keyType: TextInputType.text,
                        text: 'password'.tr,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextfieldPassword(
                        validatior: (value) {
                          if (value == null || value.isEmpty) {
                            return "confirm_password_required".tr;
                          }
                          return null;
                        },
                        keys: const Key("pq_password"),
                        controller: controllerconfirmPassword,
                        keyType: TextInputType.text,
                        text: 'confirm_password'.tr,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ConpomentButtom(
                          title: "sign_up".tr,
                          onTa: () {
                            Get.to(() => Otpverification(phone: "",));
                            if (formKey.currentState!.validate()) {
                              final phone = controllerphone.text.trim();
                              final lastName = controllerlastname.text.trim();
                              final firstName = controllerfisrtname.text.trim();
                              final password = controllerpassword.text.trim();
                              final confirmPassword =
                                  controllerconfirmPassword.text.trim();
                              controllerSignup.registerUser(
                                phone,
                                firstName,
                                lastName,
                                password,
                                confirmPassword,
                              );
                            }
                          }),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'alreadyhave_an_account'.tr,
                            style: GoogleFonts.notoSansKhmer(),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SigninSignup(),
                                    ));
                              },
                              child: Text(
                                'login'.tr,
                                style: GoogleFonts.notoSansKhmer(
                                    color: Colors.blue),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
