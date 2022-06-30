import 'package:shared_preferences/shared_preferences.dart';

class ConfigPreferences {
  static SharedPreferences? instance;
  static const String localTimeZone = 'localTimeZone';
  static const String language = 'language';
  static const String font = 'font';
  static const String rememberUser = 'rememberUser';
  static const String firstOpenApp = 'firstOpenApp';

  static Future<void> setPreferences() async {
    instance = await SharedPreferences.getInstance();
  }

  ///Singleton factory
  static final ConfigPreferences _instance = ConfigPreferences._internal();

  factory ConfigPreferences() {
    return _instance;
  }

  ConfigPreferences._internal();
}
