class ModelgetdonationbloodResponse {
  int? id;
  String? bloodType;
  Location? location;
  String? phoneNumber;
  String? status;
  String? note;
  CreatedBy? createdBy;
  String? createdAt;
  String? requestType;

  ModelgetdonationbloodResponse(
      {this.id,
      this.bloodType,
      this.location,
      this.phoneNumber,
      this.status,
      this.note,
      this.createdBy,
      this.createdAt,
      this.requestType});

  ModelgetdonationbloodResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bloodType = json['blood_type'];
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    phoneNumber = json['phone_number'];
    status = json['status'];
    note = json['note'];
    createdBy = json['created_by'] != null
        ? CreatedBy.fromJson(json['created_by'])
        : null;
    createdAt = json['created_at'];
    requestType = json['request_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['blood_type'] = bloodType;
    if (location != null) {
      data['location'] = location!.toJson();
    }
    data['phone_number'] = phoneNumber;
    data['status'] = status;
    data['note'] = note;
    if (createdBy != null) {
      data['created_by'] = createdBy!.toJson();
    }
    data['created_at'] = createdAt;
    data['request_type'] = requestType;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}

class CreatedBy {
  int? id;
  String? firstName;
  String? lastName;
  Null avatar;

  CreatedBy({this.id, this.firstName, this.lastName, this.avatar});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['avatar'] = avatar;
    return data;
  }
}
