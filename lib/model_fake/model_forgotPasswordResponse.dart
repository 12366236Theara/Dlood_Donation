class ModelForgotPasswordresponse {
  String? message;
  String? phone;
  int? otp;

  ModelForgotPasswordresponse({this.message, this.phone, this.otp});

  ModelForgotPasswordresponse.fromJson(Map<String, dynamic> json) {
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
