import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kilo_health/const/const_BASEURL.dart';
import 'package:kilo_health/model/model_rejected.dart';
import 'package:http/http.dart' as http;
import 'package:kilo_health/token/token.dart';

class ServiceRejected {
  final Token _token = Get.put(Token());
  Future<ModelRejected> serviceRejected(String rejected) async {
    final token = await _token.getToken('access_token');
    try {
      final response = await http.post(Uri.parse(ConstBaseurl.BASEURL_REJECTED),
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application'
          },
          body: jsonEncode({
            'rejected': rejected,
            'note': '',
          }));
      if (response.statusCode == 200) {
        final modelreuest = ModelRejected.fromJson(jsonDecode(response.body));
        print(' modelreuest rejected $modelreuest');
        Get.back();
        return modelreuest;
      } else {
        return ModelRejected.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      throw Exception('Exception');
    }
  }
}
