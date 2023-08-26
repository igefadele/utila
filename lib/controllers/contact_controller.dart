import 'package:flutter/material.dart';
import 'package:phone_number/phone_number.dart';

class ContactController extends ChangeNotifier {
  //================================
  // GET PHONE NUMBER VARIANTS

  Future<List<String>> getPhoneNumberVariants(
    String phoneInt,
    String phoneRaw,
    String phoneFormatted,
    String countryIsoCode,
  ) async {
    final phoneNumberUtil = PhoneNumberUtil();

    PhoneNumber phoneNumber =
        await phoneNumberUtil.parse(phoneInt, regionCode: countryIsoCode);

    String e164 =
        await phoneNumberUtil.format(phoneNumber.e164, countryIsoCode);

    String international =
        await phoneNumberUtil.format(phoneNumber.international, countryIsoCode);

    String national =
        await phoneNumberUtil.format(phoneNumber.national, countryIsoCode);

    String nationalNumber = await phoneNumberUtil.format(
        phoneNumber.nationalNumber, countryIsoCode);

    List<String> phoneNumberVariants = [
      phoneInt,
      phoneRaw,
      phoneFormatted,
      e164,
      international,
      national,
      nationalNumber,
    ];
    return phoneNumberVariants;
  }
}
