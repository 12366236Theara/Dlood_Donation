import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:kilo_health/const/const_BASEURL.dart';
import 'package:kilo_health/model/model_history.dart';
import 'package:kilo_health/token/token.dart';

class ServiceHistory {
  final Token _token = Get.put(Token());
  Future<List<ModelHistory>> getServiceHistory() async {
    var token = await _token.getToken('access_token');
    final response =
        await http.get(Uri.parse(ConstBaseurl.BASEURL_HISTORY), headers: {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    });
    if (response.statusCode == 200) {
      final List<dynamic> jsonData =
          jsonDecode(response.body); // Ensure the response is a list
      print("Response body: $jsonData");
      return jsonData.map((e) => ModelHistory.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch service history');
    }
  }
}
