import 'package:flutter/material.dart';
import 'package:flutter_app/common/configs/config.dart';

class UtilOther {
  static fieldFocusChange(
    BuildContext context,
    FocusNode current,
    FocusNode next,
  ) {
    current.unfocus();
    FocusScope.of(context).requestFocus(next);
  }

  static hiddenKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static exportMarketIcon(String market) {
    switch (market) {
      default:
        return Images.defaultImage;
    }
  }

  ///Singleton factory
  static final _instance = UtilOther._internal();

  factory UtilOther() {
    return _instance;
  }

  UtilOther._internal();
}
