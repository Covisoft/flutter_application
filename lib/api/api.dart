import 'dart:async';

import 'package:flutter_app/api/http_manager.dart';
import 'package:flutter_app/models/model.dart';

import 'api_authentication.dart';
import 'api_user.dart';

class Api {
  static final httpManager = HTTPManager();

  static const String login = "/auth/login";
  static const String user = "/api/private/user";

  ///Singleton factory
  static final Api _instance = Api._internal();

  factory Api() {
    return _instance;
  }

  Api._internal();

  static Future<ResultModel> requestLogin(params) =>
      APIAuthentication.requestLogin(params);

  static Future<ResultModel> requestRefreshToken(token) =>
      APIAuthentication.requestRefreshToken(token);
      
  static Future<ResultModel> getInfoUser(String token) =>
      APIUser.getInfoUser(token);
}
