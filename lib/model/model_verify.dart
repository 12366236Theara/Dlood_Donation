class Model_OTP {
  String? message;
  String? phone;
  UserData? userData;
  String? otpStatus;

  Model_OTP({this.message, this.phone, this.userData, this.otpStatus});

  Model_OTP.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    phone = json['phone'];
    userData = json['user_data'] != null
        ? new UserData.fromJson(json['user_data'])
        : null;
    otpStatus = json['otp_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['phone'] = this.phone;
    if (this.userData != null) {
      data['user_data'] = this.userData!.toJson();
    }
    data['otp_status'] = this.otpStatus;
    return data;
  }
}

class UserData {
  String? firstName;
  String? lastName;
  String? phone;
  bool? active;

  UserData({this.firstName, this.lastName, this.phone, this.active});

  UserData.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    phone = json['phone'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['phone'] = this.phone;
    data['active'] = this.active;
    return data;
  }
}
