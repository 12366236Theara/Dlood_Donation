import 'dart:ui';
import 'package:get/get.dart';
import 'package:kilo_health/translate_language/compoment/chineese_language.dart';
import 'package:kilo_health/translate_language/compoment/englash_language.dart';
import 'package:kilo_health/translate_language/compoment/khmer_language.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Translation extends Translations {
  // Method to save language setting in SharedPreferences
  static Future<void> setlanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', languageCode); // Save language code
    Get.updateLocale(Locale(languageCode)); // Update the locale in GetX
  }
  // Method to load and apply saved language setting
  static Future<void> loadlanguage() async {
    final prefs = await SharedPreferences.getInstance();
    String? languageCode =
        prefs.getString('languageCode') ?? 'en'; // Default to English
    Get.updateLocale(Locale(languageCode)); // Apply the saved language
  }
  static Future<void> clearlanguage() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(prefs.getString('languageCode')!);
  }
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en, // English translations
        'km': km, // Khmer translations
        'zh': zh, // Chinese translations
      };
}
