//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';

import 'package:utila/res/countries.dart';

class CountryUtil {
  //final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //final User? _currentUser = FirebaseAuth.instance.currentUser;

  // GET COUNTRY NAME
  Future<String> getCountryName(String? isoCode) async {
    Map<String, dynamic> country =
        countries.firstWhere((country) => country['code'] == isoCode);
    return country['name'];
  }

  /* Future<String> getCountryIsoCode() async {
    DocumentSnapshot doc =
        await _firestore.collection("chatusers").doc(_currentUser!.uid).get();
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    String isoCode = data["countryIsoCode"] as String;
    return isoCode;
  } */

  Future<String> getCountryDialCode(String isoCode) async {
    Map<String, dynamic> country =
        countries.firstWhere((country) => country['code'] == isoCode);
    int dialCode = country['dial_code'];
    return "$dialCode";
  }
}
