import 'package:flutter/material.dart';

import 'package:kilo_health/translate_language/translation.dart';

class DataLanguage extends StatefulWidget {
  const DataLanguage({
    super.key,
  });

  @override
  State<DataLanguage> createState() => _DataLanguageState();
}

class _DataLanguageState extends State<DataLanguage> {
  String groupValue = "yes";  
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLanguageOption(
            'lib/image/Khmer.jpg',
            'ភាសាខ្មែរ',
            'no', // Value for Khmer
            () => Translation.setlanguage(
                'km'), // Set Khmer as the selected language
          ),
          const SizedBox(height: 25),

          // English Language Option
          _buildLanguageOption(
            'lib/image/English.jpg',
            'English',
            'yes', // Value for English
            () => Translation.setlanguage('en'),
          ), // Set English as the selected language
          const SizedBox(height: 25),
          // Chinese Language Option
          _buildLanguageOption(
              'lib/image/Chinese.jpg',
              'Chinese',
              'h', // Value for Chinese
              () => Translation.setlanguage(
                  'zh')), // Set Chinese as the selected language
        ],
      ),
    );
  }

  // Helper function to create each language option
  Widget _buildLanguageOption(
      String imagePath, String languageName, String value, VoidCallback onTap) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            height: 30,
            fit: BoxFit.cover,
            imagePath,
          ),
          Text(
            languageName,
            style: const TextStyle(color: Colors.grey, fontSize: 20),
          ),
          Radio<String>(
            value: value,
            groupValue: groupValue,
            onChanged: (newValue) {
              setState(() {
                groupValue = newValue!;
              });
              onTap(); // Update locale when the language is changed
            },
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
