import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kilo_health/const/const_BASEURL.dart';
import 'package:kilo_health/const/const_Massage.dart';
import 'package:kilo_health/model/model_request.dart';
import 'package:kilo_health/token/token.dart';

class RequestbloodController extends GetxController {
  final modelRequest = Modelreuest().obs;
  final Token _token = Get.put(Token());
  var isLoading = false.obs;

  Future<void> requestController(
      {required String address,
      required String requestType,
      required String bloodType,
      required String phoneNumber,
      required String note}) async {
    isLoading.value = true;
    try {
      // Retrieve token
      final token = await _token.getToken('acces_token');

      final response = await http.post(
        Uri.parse(ConstBaseurl.BASEURL_CREATEREQUES),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer $token', // Correctly formatted token
        },
        body: jsonEncode({
          'location': {
            'address': address,
            'latitude': 11.556384,
            'longitude': 104.928226,
          },
          'request_type': requestType,
          'phone_number': phoneNumber,
          'note': note,
          'blood_type': bloodType,
        }),
      );
      if (response.statusCode == 201) {
        final blood = jsonDecode(response.body);

        modelRequest.value = Modelreuest.fromJson(blood);
        Get.back(); // Use GetX navigation
      } else {
        final errorResponse = jsonDecode(response.body);
        Get.snackbar(ConstMassage.error, errorResponse);
      }
    } catch (e) {
      print('Error: ${e.toString()}');
    } finally {
      isLoading.value = false;
    }
  }
}
