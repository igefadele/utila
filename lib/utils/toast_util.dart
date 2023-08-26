import 'package:flutter/material.dart';

class ToastUtil {
  // COMING SOON SNACKBAR
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> comingSoonSnack(
      BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        elevation: 10,
        duration: Duration(seconds: 3),
        content: Center(
          child: Text(
            'Hi, \nThis Feature Is Coming Soon!.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  //CUSTOM SNACKBAR
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> customSnack(
      BuildContext context, String text) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 10,
        duration: const Duration(seconds: 3),
        content: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
