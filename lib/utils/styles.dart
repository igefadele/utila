import 'package:flutter/material.dart';

class CustomStyle {
  static const TextStyle mainText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

// BORDER DECORATION
  get _border => OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: const Color(0xff424242).withOpacity(0.2),
          width: 1,
        ),
      );

// INPUT DECORATION
  InputDecoration customInputDec(String? hintText) => InputDecoration(
        enabledBorder: _border,
        focusedBorder: _border,
        border: _border,
        filled: true,
        hintText: hintText,
        fillColor: const Color(0xfff3f2f2),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 17,
          horizontal: 15,
        ),
      );
}
