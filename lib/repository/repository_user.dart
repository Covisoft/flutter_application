import 'dart:convert';

import 'package:flutter_app/api/api.dart';
import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_app/models/model.dart';

class UserRepository {
  ///Save User
  static Future<void> saveUser({required UserModel user}) async {
    user.setActive(true);
    await UtilPreferences.setString(
        ConfigPreferences.rememberUser, jsonEncode(user.toJson()));
  }

  ///Get User
  static Future<UserModel?> getUserRemote(String token) async {
    final result = await Api.getInfoUser(token);

    if (result.success) {
      final user = UserModel.fromJson(result.data);
      return user;
    }
    AppBloc.messageBloc.add(OnMessage(message: result.message));
    return null;
  }

  static Future<UserModel?> getUser() async {
    var result = UtilPreferences.getString(ConfigPreferences.rememberUser);
    if (result != null) {
      var user = UserModel.fromJson(jsonDecode(result));
      return user;
    }
    return null;
  }

  static Future<bool> validateToken(String token) async {
    final result = await Api.requestValidateToken(token);
    return result.success;
  }

  ///Singleton factory
  static final UserRepository _instance = UserRepository._internal();

  factory UserRepository() {
    return _instance;
  }

  UserRepository._internal();
}
