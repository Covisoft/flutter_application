import 'package:flutter/material.dart';

class ConfigAppLanguage {
  ///Default Language
  static const Locale defaultLanguage = Locale("en");

  ///List Language support in Application
  static final List<Locale> supportLanguage = [
    const Locale("en"),
    const Locale("vi"),
  ];

  ///Singleton factory
  static final ConfigAppLanguage _instance = ConfigAppLanguage._internal();

  factory ConfigAppLanguage() {
    return _instance;
  }

  ConfigAppLanguage._internal();
}
