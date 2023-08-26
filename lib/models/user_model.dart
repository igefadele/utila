import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? userUid;
  final String? userName;
  final String? firstName;
  final String? lastName;
  final String? headline;
  final String? countryName;
  final String? countryDialCode;
  final String? countryIsoCode;
  final String? phoneInt;
  final String? phoneRaw;
  final String? phoneFormatted;
  final String? email;
  final String? website;
  final String? description;
  String? photoUrl;
  String? createdAt;
  List<String>? phoneNumberVariants;
  final String? onlineStatus;
  final String? lastSeen;

  UserModel({
    this.userUid,
    this.userName,
    this.firstName,
    this.lastName,
    this.headline,
    this.countryName,
    this.countryDialCode,
    this.countryIsoCode,
    this.phoneInt,
    this.phoneRaw,
    this.phoneFormatted,
    this.email,
    this.website,
    this.description,
    this.photoUrl,
    this.createdAt,
    this.phoneNumberVariants,
    this.onlineStatus,
    this.lastSeen,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userUid: map['userUid'],
      userName: map['userName'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      headline: map['headline'],
      countryName: map['countryName'],
      countryDialCode: map['countryDialCode'],
      countryIsoCode: map['countryIsoCode'],
      phoneInt: map['phoneInt'],
      phoneRaw: map['phoneRaw'],
      phoneFormatted: map['phoneFormatted'],
      email: map['email'],
      website: map['website'],
      description: map['description'],
      photoUrl: map['photoUrl'],
      createdAt: map['createdAt'],
      phoneNumberVariants: List<String>.from(map['phoneNumberVariants']),
      onlineStatus: map['onlineStatus'],
      lastSeen: map['lastSeen'],
    );
  }

  factory UserModel.fromFirestore({required DocumentSnapshot map}) {
    return UserModel(
      userUid: map['userUid'],
      userName: map['userName'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      headline: map['headline'],
      countryName: map['countryName'],
      countryDialCode: map['countryDialCode'],
      countryIsoCode: map['countryIsoCode'],
      phoneInt: map['phoneInt'],
      phoneRaw: map['phoneRaw'],
      phoneFormatted: map['phoneFormatted'],
      email: map['email'],
      website: map['website'],
      description: map['description'],
      photoUrl: map['photoUrl'],
      createdAt: map['createdAt'],
      phoneNumberVariants: List<String>.from(map['phoneNumberVariants']),
      onlineStatus: map['onlineStatus'],
      lastSeen: map['lastSeen'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "userUid": userUid,
      "userName": userName,
      "firstName": firstName,
      "lastName": lastName,
      "headline": headline,
      "countryName": countryName,
      "countryDialCode": countryDialCode,
      "countryIsoCode": countryIsoCode,
      "phoneInt": phoneInt,
      "phoneRaw": phoneRaw,
      "phoneFormatted": phoneFormatted,
      "email": email,
      "website": website,
      "description": description,
      "photoUrl": photoUrl,
      "createdAt": createdAt,
      "phoneNumberVariants": phoneNumberVariants,
      'onlineStatus': onlineStatus,
      'lastSeen': lastSeen,
    };
  }
}
