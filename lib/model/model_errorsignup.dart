class Model_ErrorSignUp {
  List<String>? firstName;
  List<String>? lastName;
  List<String>? phone;
  List<String>? password;
  List<String>? confirmPassword;

  Model_ErrorSignUp(
      {this.firstName,
      this.lastName,
      this.phone,
      this.password,
      this.confirmPassword});

  Model_ErrorSignUp.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'].cast<String>();
    lastName = json['last_name'].cast<String>();
    phone = json['phone'].cast<String>();
    password = json['password'].cast<String>();
    confirmPassword = json['confirm_password'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['phone'] = this.phone;
    data['password'] = this.password;
    data['confirm_password'] = this.confirmPassword;
    return data;
  }
}
