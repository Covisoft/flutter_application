import 'package:flutter/material.dart';

const kColorHint = Color(0xFF6C757D);
const kColorAccent = Color(0xFFF761A1);
const kColorError = Color(0xFFDC3545);
const kColorSuccess = Color(0xFF28A745);
const kColorWarning = Color(0xFFFFC107);
const kColorInfo = Color(0xFF0075FF);

class UtilColor {
  static Color getColorFromHex(String? hexColor) {
    if (hexColor != null) {
      hexColor = hexColor.toUpperCase().replaceAll("#", "");
      if (hexColor.length == 6) {
        hexColor = "FF" + hexColor;
      }
      if (int.tryParse(hexColor, radix: 16) != null) {
        return Color(int.tryParse(hexColor, radix: 16)!);
      }
    }
    return Colors.black;
  }

  static String getStringColor(Color color) {
    return color.value.toRadixString(16);
  }

  ///Singleton factory
  static final _instance = UtilColor._internal();

  factory UtilColor() {
    return _instance;
  }

  UtilColor._internal();
}
