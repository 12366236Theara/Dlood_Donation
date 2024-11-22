import 'package:flutter/material.dart';

class TabReports extends StatelessWidget {
  final String title;
  final onTa;
  const TabReports({super.key, required this.title, this.onTa});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: const Color.fromARGB(255, 242, 237, 237)),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: 170,
                child: TextButton(
                  onPressed: onTa,
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                )),
            Container(
              alignment: Alignment.center,
              height: 55,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: const Text(
                "Sign up",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
