import 'package:flutter/material.dart';
import 'package:flutter_app/common/configs/config_color.dart';

class ConfigText {
  ///Default font
  static const String defaultFont = 'Roboto';

  static final Color _colorDefault = ConfigColor.textLight;
  static TextStyle headline1 = TextStyle(
    fontFamily: defaultFont,
    fontSize: 40,
    color: _colorDefault,
  );
  static TextStyle headline2 = TextStyle(
    fontFamily: defaultFont,
    fontSize: 36,
    color: _colorDefault,
  );
  static TextStyle headline3 = TextStyle(
    fontFamily: defaultFont,
    fontSize: 32,
    color: _colorDefault,
  );
  static TextStyle headline4 = TextStyle(
    fontFamily: defaultFont,
    fontSize: 28,
    color: _colorDefault,
  );
  static TextStyle headline5 = TextStyle(
    fontFamily: defaultFont,
    fontSize: 24,
    color: _colorDefault,
  );
  static TextStyle headline6 = TextStyle(
    fontFamily: defaultFont,
    fontSize: 20,
    color: _colorDefault,
  );
  static TextStyle button = TextStyle(
    fontFamily: defaultFont,
    fontSize: 18,
    color: _colorDefault,
  );
  static TextStyle body = TextStyle(
    fontFamily: defaultFont,
    fontSize: 16,
    color: _colorDefault,
  );
  static TextStyle subtitle = TextStyle(
    fontFamily: defaultFont,
    fontSize: 12,
    color: _colorDefault,
  );

  ///Singleton factory
  static final ConfigText _instance = ConfigText._internal();

  factory ConfigText() {
    return _instance;
  }

  ConfigText._internal();
}
