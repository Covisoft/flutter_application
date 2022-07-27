import 'package:flutter/material.dart';

class ConfigColor {
  static Color primary = const Color(0xff00623B);
  static Color accent = const Color(0xffFFA104);
  static Color secondary = const Color(0xff135bbd);
  static Color primaryLight = const Color(0xffFCFDFF);
  static Color primaryDark = const Color(0xff000E20);
  static Color error = const Color(0xffDC3545);
  static Color success = const Color(0xff28A745);
  static Color warning = const Color(0xffFFC107);
  static Color info = const Color(0xff0075FF);

  ///Text Color
  static Color textPrimary = const Color(0xff00623B);
  static Color textSecondary = const Color(0xff135bbd);
  static Color textLight = const Color(0xffFCFDFF);
  static Color textDark = const Color(0xff000E20);
  static Color textHint = const Color(0xff6C757D);
  static Color textError = const Color(0xffDC3545);
  static Color textSuccess = const Color(0xff28A745);
  static Color textHighlight = const Color(0xffFFA104);

  ///Button Color
  static Color buttonPrimary = const Color(0xff00623B);
  static Color buttonLight = const Color(0xffFCFDFF);
  static Color buttonDark = const Color(0xff000E20);
  static Color buttonDisable = const Color.fromARGB(1, 19, 91, 189);

  ///Border Color
  static Color border = const Color(0xff00623B);
  static Color borderLight = const Color(0xffFCFDFF);

  ///Icon Color
  static Color icon = const Color(0xff00623B);
  static Color iconLight = const Color(0xffFCFDFF);

  ///Card Color
  static Color cardPrimary = const Color(0xff00623B);

  ///Singleton factory
  static final ConfigColor _instance = ConfigColor._internal();

  factory ConfigColor() {
    return _instance;
  }

  ConfigColor._internal();
}
