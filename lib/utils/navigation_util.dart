import 'package:flutter/material.dart';

class NavUtil {
  // NAVIGATE TO NEW SCREEN
  dynamic toScreen(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  // NAVIGATE TO NEW SCREEN
  dynamic replace(BuildContext context, Widget page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page));
  }

  // NAVIGATE TO NEW SCREEN
  /* dynamic removeUntil(BuildContext context, Widget page) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => page), (route) => false);
  } */
  dynamic removeUntil(BuildContext context, Widget page) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page), (route) => false);
  }
}
