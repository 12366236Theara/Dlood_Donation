class ModelprofileResponse {
  int? id;
  String? firstName;
  String? lastName;
  String? phone;
  bool? availableForDonation;
  String? avatar;

  ModelprofileResponse(
      {this.id,
      this.firstName,
      this.lastName,
      this.phone,
      this.availableForDonation,
      this.avatar});

  ModelprofileResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    phone = json['phone'];
    availableForDonation = json['available_for_donation'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['phone'] = phone;
    data['available_for_donation'] = availableForDonation;
    data['avatar'] = avatar;
    return data;
  }
}
