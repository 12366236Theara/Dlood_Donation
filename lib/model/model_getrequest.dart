class Model_GetRequest {
  int? id;
  String? bloodType;
  Location? location;
  String? phoneNumber;
  String? status;
  String? note;
  CreatedBy? createdBy;
  String? createdAt;
  String? requestType;

  Model_GetRequest(
      {this.id,
      this.bloodType,
      this.location,
      this.phoneNumber,
      this.status,
      this.note,
      this.createdBy,
      this.createdAt,
      this.requestType});

  Model_GetRequest.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bloodType = json['blood_type'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    phoneNumber = json['phone_number'];
    status = json['status'];
    note = json['note'];
    createdBy = json['created_by'] != null
        ? new CreatedBy.fromJson(json['created_by'])
        : null;
    createdAt = json['created_at'];
    requestType = json['request_type'];
  }

  

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['blood_type'] = this.bloodType;
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['phone_number'] = this.phoneNumber;
    data['status'] = this.status;
    data['note'] = this.note;
    if (this.createdBy != null) {
      data['created_by'] = this.createdBy!.toJson();
    }
    data['created_at'] = this.createdAt;
    data['request_type'] = this.requestType;
    return data;
  }
}

class Location {
  String? address;
  double? latitude;
  double? longitude;

  Location({this.address, this.latitude, this.longitude});

  Location.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}

class CreatedBy {
  int? id;
  String? firstName;
  String? lastName;
  Null? avatar;

  CreatedBy({this.id, this.firstName, this.lastName, this.avatar});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['avatar'] = this.avatar;
    return data;
  }
}
