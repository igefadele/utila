class LocalContactModel {
  String? displayName;
  String? phoneNumber;
  String? firstName;
  String? lastName;
  String? photoUrl;

  LocalContactModel({
    this.displayName,
    this.phoneNumber,
    this.firstName,
    this.lastName,
    this.photoUrl,
  });

  factory LocalContactModel.fromJson(Map<String, dynamic> json) {
    return LocalContactModel(
      displayName: json['displayName'] ?? "",
      phoneNumber: json['phoneNumber'] ?? "",
      firstName: json['firstName'] ?? "",
      lastName: json['lastName'] ?? "",
      photoUrl: json['photoUrl'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "displayName": displayName,
      "phoneNumber": phoneNumber,
      "firstName": firstName,
      "lastName": lastName,
      "photoUrl": photoUrl,
    };
  }
}
