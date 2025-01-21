import 'dart:convert';

import 'package:get/get.dart';
import 'package:kilo_health/const/const_BASEURL.dart';
import 'package:kilo_health/model/model_profile.dart';
import 'package:kilo_health/token/token.dart';
import 'package:http/http.dart' as http;

class ProfileService {
  final Token _token = Get.put(Token());
  Future<Model_Profile> getProfile() async {
    try {
      final token = await _token.getToken('access_token');
      final response =
          await http.get(Uri.parse(ConstBaseurl.BASEURL_PROFILE), headers: {
        'Authorization': 'Bearer $token',
      });
      return Model_Profile.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
    } catch (e) {
      print("Failed to get profile====================");
      rethrow;
    }
  }
}
