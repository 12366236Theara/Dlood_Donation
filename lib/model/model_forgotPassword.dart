class ModelForgotPassword {
  String? message;
  String? phone;
  int? otp;

  ModelForgotPassword({this.message, this.phone, this.otp});

  ModelForgotPassword.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    phone = json['phone'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['phone'] = phone;
    data['otp'] = otp;
    return data;
  }
}
