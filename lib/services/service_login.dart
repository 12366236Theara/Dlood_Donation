import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

import 'package:kilo_health/const/const_Login.dart';
import 'package:kilo_health/model/model_Login.dart';
import 'package:kilo_health/token/token.dart';

class LoginService {
  // String generateFakeToken() {
  //   const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  //   Random rand = Random();
  //   int tokenLength = 32;  
  //   StringBuffer token = StringBuffer();
  //   for (int i = 0; i < tokenLength; i++) {
  //     token.write(chars[rand.nextInt(chars.length)]);
  //   }
  //   return token.toString();
  // }


  Future<ModelLogin?> loginPost(String phone, String password) async {
    // if(phone.length <= 15 && phone.length >= 15 ){
    //  return Future.error("Phone number must be exactly 15 characters long.");
    // }
    try {
      final response = await http.post(
        Uri.parse(BASEURL_LOGIN),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'phone': phone, 'password': password}),
      );

      if (response.statusCode == 200) {
        
        var jsonResponse = jsonDecode(response.body);
        var modelLogin = ModelLogin.fromJson(jsonResponse);
        // Save token
        await Token().saveToken(modelLogin.accessToken!);
        return modelLogin;
      } else if (response.statusCode == 400) {
        final errorResponse = jsonDecode(response.body);
        return Future.error(errorResponse);
      }
    } catch (e) {
      return Future.error("An error occurred: $e");
    }
    return null;
  }

  String formatPhoneNumber(String phone) {
    if (!phone.startsWith('+855')) {
      if (phone.startsWith('0')) {
        return phone.replaceFirst('0', '+855');
      }
      return '+855$phone';
    }
    return phone;
  }
}
