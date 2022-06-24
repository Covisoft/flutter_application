import 'package:flutter/material.dart';

class ConfigSize {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static Orientation? orientation;
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
    ///Singleton factory
  static final ConfigSize _instance = ConfigSize._internal();

  factory ConfigSize() {
    return _instance;
  }

  ConfigSize._internal();
}
