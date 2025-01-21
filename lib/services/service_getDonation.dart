import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kilo_health/const/const_BASEURL.dart';

import 'package:kilo_health/model/model_donationBlood.dart';

class DonationBloodService {
  

  DonationBloodService();

  // Fetch blood donation data
  Future<List<ModelDonationblood>> fetchDonationBlood(String token) async {
    final response = await http.get(
      Uri.parse(ConstBaseurl.BASEURL_BLOODDONATION),
      headers: {
        "Authorization": "Bearer $token",
      },
    );

    if (response.statusCode == 200) {
      final List<dynamic> bloodData = json.decode(response.body);
      return bloodData.map((e) => ModelDonationblood.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load blood donation data");
    }
  }
}