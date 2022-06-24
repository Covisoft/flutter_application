import 'dart:developer' as developer;

import 'package:flutter_app/common/configs/config.dart';



class UtilLogger {
  static log([String tag = "LOGGER", dynamic msg]) {
    if (ConfigApplication.debug) {
      developer.log('${msg ?? ''}', name: tag);
    }
  }

  ///Singleton factory
  static final _instance = UtilLogger._internal();

  factory UtilLogger() {
    return _instance;
  }

  UtilLogger._internal();
}
