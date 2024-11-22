import 'package:flutter/material.dart';

class DataLanguage extends StatefulWidget {
  const DataLanguage({
    super.key,
  });

  @override
  State<DataLanguage> createState() => _DataLanguageState();
}

class _DataLanguageState extends State<DataLanguage> {
  String groupValue = "yes";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  height: 30,
                  fit: BoxFit.cover,
                  
                  "lib/image/Khmer.jpg",
                  
                ),
                const Text(
                  "ភាសាខ្មែរ",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                Radio(
                  value: "no",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                  activeColor: Colors.blue,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.all(10),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  height: 30,
                  fit: BoxFit.cover,
                  "lib/image/English.jpg",
                ),
                const Text(
                  "English",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                Radio(
                  value: "yes",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                  activeColor: Colors.blue,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.all(10),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  height: 30,
                  fit: BoxFit.cover,
                  "lib/image/Chinese.jpg",
                ),
                const Text(
                  "Chinese",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                Radio(
                  value: "h",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                  activeColor: Colors.blue,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
