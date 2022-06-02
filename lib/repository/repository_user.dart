import 'package:flutter_app/api/api.dart';
import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/models/model.dart';
import 'package:uuid/uuid.dart';

class UserRepository {
  static UserModel? _user;

  ///Save User
  static Future<void> saveUser({required UserModel user}) async {
    user.setActive(true);
  }

  ///Get User
  static Future<UserModel?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => _user = UserModel(
          id: const Uuid().v4(), username: 'User Account', active: true),
    );
  }



  ///Singleton factory
  static final UserRepository _instance = UserRepository._internal();

  factory UserRepository() {
    return _instance;
  }

  UserRepository._internal();
}
