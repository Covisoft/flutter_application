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
        Preferences.rememberUser, jsonEncode(user.toDatabase()));
  }

  ///Get User
  static Future<UserModel?> getUserRemote(String token) async {
    final result = await Api.getInfoUser(token);

    if (result.success) {
      final user = UserModel.fromJson(result.data);
      user.setToken(token);
      user.setActive(true);
      return user;
    }
    AppBloc.messageBloc.add(OnMessage(message: result.message));
    return null;
  }

  static Future<UserModel?> getUser() async {
    var result = UtilPreferences.getString(Preferences.rememberUser);
    if (result != null) {
      var user = UserModel.fromDatabase(jsonDecode(result));
      return user;
    }
    return null;
  }

  ///Singleton factory
  static final UserRepository _instance = UserRepository._internal();

  factory UserRepository() {
    return _instance;
  }

  UserRepository._internal();
}
