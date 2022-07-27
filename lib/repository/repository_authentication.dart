import 'dart:async';

import 'package:flutter_app/api/api.dart';
import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/repository/repository.dart';

import '../models/model.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  static final _controller = StreamController<AuthenticationStatus>();

  static Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  ///Login
  static Future<bool> login({
    required String username,
    required String password,
  }) async {
    final phoneNumber = username.replaceFirst('0', '+84');
    final result = await Api.requestLogin({
      'phoneNumber': phoneNumber,
      'password': password,
    });

    ///Case API success
    if (result.success) {
      final user = await UserRepository.getUserRemote(result.data['token']);
      if (user != null) {
        user.setToken(result.data['token']);
        user.setRefreshToken(result.data['refreshToken']);
        await AppBloc.userCubit.onSaveUser(user);
        _controller.add(AuthenticationStatus.authenticated);
        return true;
      }
    }
    _controller.add(AuthenticationStatus.unauthenticated);

    ///show message
    AppBloc.messageBloc.add(OnMessage(message: result.message));
    return false;
  }

  static void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  static void dispose() => _controller.close();

  ///Valid Token
  static Future<UserModel?> refreshToken(token) async {
    final result = await Api.requestRefreshToken(token);

    ///Fetch api success
    if (result.success) {
      final user = await UserRepository.getUserRemote(result.data['token']);
      if (user != null) {
        user.setToken(result.data['token']);
        user.setRefreshToken(result.data['refreshToken']);
        await AppBloc.userCubit.onSaveUser(user);
        _controller.add(AuthenticationStatus.authenticated);
        return user;
      }
    }

    ///show message
    AppBloc.messageBloc.add(OnMessage(message: result.message));
    return null;
  }

  static final AuthenticationRepository _instance =
      AuthenticationRepository._internal();

  factory AuthenticationRepository() {
    return _instance;
  }

  AuthenticationRepository._internal();
}
