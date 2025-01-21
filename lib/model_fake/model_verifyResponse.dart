class ModelverifyResponse {
  String? message;
  String? phone;
  UserData? userData;
  String? otpStatus;

  ModelverifyResponse({this.message, this.phone, this.userData, this.otpStatus});

  ModelverifyResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    phone = json['phone'];
    userData =
        json['user_data'] != null ? UserData.fromJson(json['user_data']) : null;
    otpStatus = json['otp_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['phone'] = phone;
    if (userData != null) {
      data['user_data'] = userData!.toJson();
    }
    data['otp_status'] = otpStatus;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['phone'] = phone;
    data['active'] = active;
    return data;
  }
}
