import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kilo_health/const/const_BASEURL.dart';
import 'package:kilo_health/model/model_donationBlood.dart';

import 'package:kilo_health/token/token.dart';
import 'package:http/http.dart' as http;

class ServiceRequetblooddonation {
  final _token = Get.put(Token());

  Future<ModelDonationblood> postBlood(String bloodtype, String address,
      String phonenumber, String requesttype, String note) async {
    final token = await _token.getToken('access_token');
    try {
      final response = await http.post(
        Uri.parse(ConstBaseurl.BASEURL_BLODDONATION),
        body: jsonEncode(
          {
            'blood_type': bloodtype,
            'location': {
              'address': address,
              'longitude': 104.928226,
              'latitude': 11.556384,
            },
            'phone_number': phonenumber,
            'request_type': requesttype,
            'note': note,
          },
        ),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 201) {
        final Map<String, dynamic> decodefaect = jsonDecode(response.body);
        return ModelDonationblood.fromJson(decodefaect);
      } else {
        throw Exception('Error creating not 201 ${response.body}');
      }
    } catch (e) {
      print('===========================${e.toString()}');
      rethrow;
    }
  }
}
