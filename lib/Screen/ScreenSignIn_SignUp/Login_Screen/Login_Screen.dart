import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/Login_Screen/conpoment/check_Box.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/Login_Screen/conpoment/textfeildphone.dart';
import 'package:kilo_health/Screen/ScreenSignIn_SignUp/Login_Screen/conpoment/textfiwldPasssword.dart';
import 'package:kilo_health/conpoment/conpoment_Buttom_Tab.dart';
import 'package:kilo_health/controller/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController controllerLogin = Get.put(LoginController(Get.find()));
  final TextEditingController _phoneController =
      TextEditingController(text: "0123456789");
  final TextEditingController passwordController =
      TextEditingController(text: "123456");
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Textfials(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'phone_number_required'.tr;
                }
                return null;
              },
              keys: const Key('phoneField'),
              text: "phone_number".tr,
              image: "lib/image/calls.jpg",
              keyboardType: TextInputType.phone,
              controller: _phoneController,
            ),
            const SizedBox(
              height: 15,
            ),
            Textfiwldpasssword(
              validators: (value) {
                if (value == null || value.isEmpty) {
                  return 'password_required'.tr;
                }
                return null;
              },
              keys: const Key("passsword"),
              controller: passwordController,
            ),
            const SizedBox(
              height: 4,
            ),
            const CheckBox(),
            const SizedBox(
              height: 20,
            ),
            Obx(() {
              return controllerLogin.isLoading.value
                  ? const CircularProgressIndicator()
                  : ConpomentButtom(
                      onTa: () async {
                        _contronllerbuttom();
                      },
                      title: "login".tr,
                    );
            })
          ],
        ),
      ),
    );
  }

  void _contronllerbuttom() {
    if (_formKey.currentState!.validate()) {
      // Proceed only if validation passes
      final phone = _phoneController.text.trim();
      final password = passwordController.text.trim();
      controllerLogin.login(phone, password, "Theara");
    }
  }
}
