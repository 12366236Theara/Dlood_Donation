class Model_SingUp {
  String? message;
  String? phone;
  int? otpExpiresInSeconds;
  int? otp;
  UserData? userData;

  Model_SingUp(
      {this.message,
      this.phone,
      this.otpExpiresInSeconds,
      this.otp,
      this.userData});

  Model_SingUp.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    phone = json['phone'];
    otpExpiresInSeconds = json['otp_expires_in_seconds'];
    otp = json['otp'];
    userData =
        json['user_data'] != null ? UserData.fromJson(json['user_data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['phone'] = phone;
    data['otp_expires_in_seconds'] = otpExpiresInSeconds;
    data['otp'] = otp;
    if (userData != null) {
      data['user_data'] = userData!.toJson();
    }
    return data;
  }
}

class UserData {
  String? firstName;
  String? lastName;
  bool? active;

  UserData({this.firstName, this.lastName, this.active});

  UserData.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['active'] = active;
    return data;
  }
}
