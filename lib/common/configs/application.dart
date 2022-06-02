import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_app/models/model.dart';

class Application {
  /// [Production - Dev]

  static const bool debug = true;
  static bool external = false;
  static bool devicePreview = false;


  static const String version = '0.0.1';
  static const String dateFormat = 'HH:mm, MMM dd yyyy';
  static const String clientID = "";
  static const String domain = "https://api.saleboltapp.com";
  static const String baseUrl = 'http://159.223.87.59:8000/api/v1';
  static const String baseUrlToken = 'http://171.244.37.66:8080';
  static const String playStoreID = "";
  static const String appStoreID = "";
  static const String statementSyncTime = '2021-01-01';
  static const String supportEmail = '';
  static const String website = '';
  static bool localTimeZone = true;

  static DeviceModel? device;

  static Future<void> setDevice() async {
    device = await UtilDevice.loadDevice();
  }

  static Future<void> setDeviceToken() async {
    final token = await UtilDevice.getDeviceToken();
    device!.newToken = token;
  }

  ///Singleton factory
  static final Application _instance = Application._internal();

  factory Application() {
    return _instance;
  }

  Application._internal();
}
