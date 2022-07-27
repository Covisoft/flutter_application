import 'dart:async';

import 'package:flutter_app/api/http_manager.dart';
import 'package:flutter_app/models/model.dart';

import 'api_application.dart';
import 'api_authentication.dart';
import 'api_user.dart';

class Api {
  static final httpManager = HTTPManager();

  static const String login = "/auth/login";
  static const String user = "/user/getInfo";
  static const String validateToken = "/auth/validateToken";
  static const String refreshToken = "/auth/refreshToken";
  static const String language = "/language";

  ///Singleton factory
  static final Api _instance = Api._internal();

  factory Api() {
    return _instance;
  }

  Api._internal();

  static Future<ResultModel> requestLogin(params) =>
      APIAuthentication.requestLogin(params);

  static Future<ResultModel> requestRefreshToken(tokenRefresh) =>
      APIAuthentication.requestRefreshToken(tokenRefresh);

  static Future<ResultModel> getInfoUser(String token) =>
      APIUser.getInfoUser(token);

  static Future<ResultModel> requestValidateToken(String token) =>
      APIAuthentication.requestValidateToken(token);

  static Future<ResultModel> requestLanguages(String languageCode) =>
      APIApplication.requestLanguages(languageCode);

  static Future<ResultModel> requestEditLanguage(params) =>
      APIApplication.requestEditLanguage(params);

  static Future<ResultModel> requestAddNewLanguage(params) =>
      APIApplication.requestAddNewLanguage(params);

  static Future<ResultModel> requestDeleteLanguage(params) =>
      APIApplication.requestDeleteLanguage(params);
}
