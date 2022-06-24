import 'package:flutter/material.dart';

class ConfigText {
  static late TextTheme textTheme;
  static late TextTheme primaryTextTheme;
  void init(BuildContext context) {
    textTheme = Theme.of(context).textTheme;
    primaryTextTheme = Theme.of(context).primaryTextTheme;
  }

  ///Singleton factory
  static final ConfigText _instance = ConfigText._internal();

  factory ConfigText() {
    return _instance;
  }

  ConfigText._internal();
}
