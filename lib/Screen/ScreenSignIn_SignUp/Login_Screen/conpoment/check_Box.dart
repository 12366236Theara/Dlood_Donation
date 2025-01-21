import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kilo_health/Screen/forGot_Password_Screen/forgot_passsword.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
                value: _isCheckBox,
                onChanged: (value) {
                  setState(() {
                    _isCheckBox = value ?? false;
                  });
                }),
             Text("remember_me".tr , style: GoogleFonts.notoSansKhmer()),
          ],
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotPasssword(),
                  ));
            },
            child:  Text(
              "forget_password".tr,
              style:  GoogleFonts.notoSansKhmer(fontSize: 14, color: Colors.blue),
            ))
      ],
    );
  }
}
