class ModelloginResponse {
  String? message;
  User? user;
  String? accessToken;

  ModelloginResponse({this.message, this.user,  this.accessToken});

  ModelloginResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['access_token'] = accessToken;
    return data;
  }
}
class User {
  String? firstName;
  String? lastName;
  String? phone;
  bool? isActive;
  User({this.firstName, this.lastName, this.phone, this.isActive});

  User.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    phone = json['phone'];
    isActive = json['is_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['phone'] = phone;
    data['is_active'] = isActive;
    return data;
  }
}
