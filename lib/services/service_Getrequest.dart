import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:kilo_health/const/const_BASEURL.dart';

import 'package:kilo_health/model/model_getrequest.dart';
import 'package:kilo_health/token/token.dart';

class GetRequestService {
  final Token get_token = Get.put(Token());
  

  GetRequestService();

  Future<List<Model_GetRequest>> fetchRequests() async {
    final token = await get_token.getToken("access_token");
    final response = await http.get(
      Uri.parse( ConstBaseurl.BASEURL_GETREQUEST),
      headers: {
        "Authorization": "Bearer $token",
      },
    );

    if (response.statusCode == 200) {
      var request = jsonDecode(response.body) as List;
      return request.map((e) => Model_GetRequest.fromJson(e)).toList();
    } else {
      throw Exception("Failed to fetch requests");
    }
  }
}
