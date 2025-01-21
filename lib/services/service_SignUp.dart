import 'dart:convert';
import 'package:http/http.dart' as http;
import '../const/const_BASEURL.dart';
import '../model/model_SignUp.dart'; // Import the Model_SingUp class

class SignUpService {
  Future<Model_SingUp> registerUser({
    required String phone,
    required String firstName,
    required String lastName,
    required String password,
    required String confirmPassword,
  }) async {

    final response = await http.post(
      Uri.parse(ConstBaseurl.BASEURL_SIGNUP),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'phone': phone,
        'first_name': firstName,
        'last_name': lastName,
        'password': password,
        'confirm_password': confirmPassword,
      }),
    );

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      return Model_SingUp.fromJson(result);
    } else if (response.statusCode == 400) {
      final errorData = jsonDecode(response.body);
      throw Exception(errorData);
    } else {
      throw Exception("Something went wrong. Please try again.");
    }
  }

  
}