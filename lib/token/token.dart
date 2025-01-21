import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Token extends GetxController {
  Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('access_token', token);
    print('Saving token ==========saving Token===========$token');
  }

  Future<String?> getToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final tokens = prefs.getString('access_token');
    print(" toget ken---------------getToken--================${token.toString()}");

    return tokens;
  }

  Future<void> cleanAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('access_token');
    print("39999999999999999999999999999999999999999999  ==================clear Toeken");
  }
}
