import 'package:flutter/material.dart';
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
            const Text("Remember me"),
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
            child: const Text(
              "Forget Password ?",
              style: TextStyle(fontSize: 14, color: Colors.blue),
            ))
      ],
    );
  }
}
