import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfigSize {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static Orientation? orientation;
  static bool isMobile = true;
  static bool isWeb = false;

  /// the maximum width size of mobile screen is 600.0
  static const SIZE_MOBILE_MAX_WIDTH = 600.0;
  static const SIZE_IPAD_MAX_WIDTH = 1000.0;

  ///Spacing size is 8.0
  static final SPACING_SIZE_1 = 8.0.h;

  ///Spacing size is 16.0
  static final SPACING_SIZE_2 = 16.0.h;

  ///Spacing size is 24.0
  static final SPACING_SIZE_3 = 24.0.h;

  ///Spacing size is 32.0
  static final SPACING_SIZE_4 = 32.0.h;

  ///Spacing size is 40.0
  static final SPACING_SIZE_5 = 40.0.h;

  ///Spacing size is 64.0
  static final SPACING_SIZE_6 = 64.0.h;

  ///Spacing size is 80.0
  static final SPACING_SIZE_7 = 80.0.h;

  ///Spacing size is 96.0
  static final SPACING_SIZE_8 = 96.0.h;

  ///Spacing size is 120.0
  static final SPACING_SIZE_9 = 120.0.h;

  ///Spacing size is 8.0
  static final RADIUS_SIZE_1 = 8.0.h;

  ///Spacing size is 16.0
  static final RADIUS_SIZE_2 = 16.0.h;

  ///Spacing size is 24.0
  static final RADIUS_SIZE_3 = 24.0.h;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    if (screenWidth > SIZE_IPAD_MAX_WIDTH) {
      isWeb = true;
      isMobile = false;
    } else if (screenWidth > SIZE_MOBILE_MAX_WIDTH) {
      isMobile = false;
      isWeb = false;
    } else {
      isMobile = true;
      isWeb = false;
    }
  }

  ///Singleton factory
  static final ConfigSize _instance = ConfigSize._internal();

  factory ConfigSize() {
    return _instance;
  }

  ConfigSize._internal();
}
