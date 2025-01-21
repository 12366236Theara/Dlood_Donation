import 'dart:math';

import 'package:kilo_health/model/model_Login.dart';
import 'package:kilo_health/model/model_SignUp.dart';
import 'package:kilo_health/model/model_donationBlood.dart' as blood;
import 'package:kilo_health/model/model_getrequest.dart' as getblood;
import 'package:kilo_health/model/model_profile.dart';
import 'package:kilo_health/model_fake/model_SigupResponse.dart';
import 'package:kilo_health/model_fake/model_loginRepos.dart';
import 'package:kilo_health/repositories/userRepositories.dart';
import 'package:kilo_health/token/token.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import the Token class

class FakeDataRepositories implements UserRepositories {
  

  @override
  Future<ModelLogin> login(ModelLoginrepos data) async {
    String phone = "+855123456789";
    String password = "123456";
    print("Login Attempt: ${data.phone}, ${data.password}");
    if (data.phone == phone && data.password == password) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789");

      
      
      return Future.value(
        ModelLogin(
          accessToken: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789",
          message: "Login successful",
          user: User(
            firstName: "firstName",
            isActive: false,
            lastName: "lastName",
            phone: 'phone',
          ),
        ),
      );
    } else {
      print('bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb');
      throw UnimplementedError();
    }
  }

  @override
  Future<Model_Profile> profile() {
    return Future.value(
      Model_Profile(
        availableForDonation: false,
        avatar: '',
        firstName: "Phan",
        lastName: "Sotheara",
        id: 10,
        phone: "888899999",
      ),
    );
  }

  @override
  Future<List<getblood.Model_GetRequest>> getrequest() {
    return Future.value([
      getblood.Model_GetRequest(
        bloodType: "A+",
        location: getblood.Location(
          address: "123 Main Street, Phnom Penh, Cambodia",
          latitude: 11.5564,
          longitude: 104.9282,
        ),
        createdAt: "2023-10-01T12:34:56Z",
        createdBy: getblood.CreatedBy(
          id: 1,
          avatar: null,
          firstName: "Thea",
          lastName: "Re",
        ),
        id: 10,
        note: "Hello, world!",
        phoneNumber: "0977496630",
        requestType: "donation",
        status: "Pending",
      ),
      getblood.Model_GetRequest(
        bloodType: "O+",
        location: getblood.Location(
          address: "456 Second Street, Phnom Penh, Cambodia",
          latitude: 11.5555,
          longitude: 104.9266,
        ),
        createdAt: "2023-10-02T15:00:00Z",
        createdBy: getblood.CreatedBy(
          id: 2,
          avatar: null,
          firstName: "Sok",
          lastName: "Dara",
        ),
        id: 11,
        note: "Urgent requirement for O+ blood",
        phoneNumber: "0977554433",
        requestType: "donation",
        status: "Pending",
      ),
      getblood.Model_GetRequest(
        bloodType: "B+",
        location: getblood.Location(
          address: "789 Third Street, Phnom Penh, Cambodia",
          latitude: 11.5580,
          longitude: 104.9300,
        ),
        createdAt: "2023-10-03T18:30:00Z",
        createdBy: getblood.CreatedBy(
          id: 3,
          avatar: null,
          firstName: "Chan",
          lastName: "Srey",
        ),
        id: 12,
        note: "Need B+ blood urgently for surgery",
        phoneNumber: "0977665544",
        requestType: "donation",
        status: "Pending",
      ),
    ]);
  }

  @override
  Future<blood.ModelDonationblood> getdonation() {
    return Future.value(
      blood.ModelDonationblood(
        bloodType: "B+",
        createdAt: "2023-10-01T12:34:56Z",
        createdBy: blood.CreatedBy(
          id: 1,
          avatar: null,
          firstName: "John",
          lastName: "Doe",
        ),
        id: 1,
        location: blood.Location(
          address: "456 Main Street, Phnom Penh, Cambodia",
          latitude: 11.5564,
          longitude: 104.9282,
        ),
        note: "Urgent need for blood donation",
        phoneNumber: "0977496630",
        requestType: "request",
        status: "Pending",
      ),
    );
  }

  @override
  Future<Model_SingUp> signUp(ModelSigupresponse data) {
    if (data.phone.isNotEmpty &&
        data.firstname.isNotEmpty &&
        data.lastname.isNotEmpty &&
        data.conficpaasword.isNotEmpty &&
        data.password.isNotEmpty) {
      Future.value(Model_SingUp(
        message: 'Sign Up Success',
        otp: 1234,
        phone: "+855123456789",
        otpExpiresInSeconds: 12,
        userData: UserData(
          active: null,
          firstName: "Phan",
          lastName: "theara",
        ),
      ));
    }
    throw Exception("Invalid Error message");
  }
}
