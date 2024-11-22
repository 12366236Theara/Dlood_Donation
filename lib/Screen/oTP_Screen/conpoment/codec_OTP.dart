import 'package:flutter/material.dart';

class CodecOtp extends StatelessWidget {
  const CodecOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 70),
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              alignment: Alignment.center,
              height: 45,
              width: 49,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black, blurRadius: 1, offset: Offset(0, 0))
                ],
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                maxLength: 1,
                autofocus: index == 0,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  counterText: "", // Hides the counter
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  if (value.isNotEmpty && index < 3) {
                    FocusScope.of(context).nextFocus();
                  } else if (value.isEmpty && index > 0) {
                    FocusScope.of(context).previousFocus();
                  }
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}
