import 'dart:async';

import 'package:flutter_app/api/api.dart';
import 'package:flutter_app/blocs/bloc.dart';

import '../models/model.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  static final _controller = StreamController<AuthenticationStatus>();

  ///Login
  static Future<UserModel?> login({
    required String username,
    required String password,
  }) async {
    final result = await Api.requestLogin({
      'phoneNumber': username,
      'password': password,
    });

    ///Case API success
    if (result.success) {
      return UserModel.fromJson(result.data);
    }

    ///show message
    AppBloc.messageBloc.add(OnMessage(message: result.message));
    return null;
  }

  static void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  static void dispose() => _controller.close();

  static final AuthenticationRepository _instance =
      AuthenticationRepository._internal();

  factory AuthenticationRepository() {
    return _instance;
  }

  AuthenticationRepository._internal();
}
