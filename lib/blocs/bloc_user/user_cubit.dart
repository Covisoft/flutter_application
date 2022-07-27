import 'package:bloc/bloc.dart';

import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/models/model.dart';
import 'package:flutter_app/repository/repository.dart';

class UserCubit extends Cubit<UserModel?> {
  UserCubit() : super(null);

  ///On load user
  Future<UserModel?> onLoadUser(token) async {
    ///Fetch API via repository
    final result = await UserRepository.getUserRemote(token);

    ///Case API success
    if (result != null) {
      await onSaveUser(result);
      return result;
    }
    return null;
  }

  ///Only save to state
  Future<void> onSetUser(UserModel user) async {
    emit(user);
  }

  ///On save user
  Future<void> onSaveUser(UserModel user) async {
    await UserRepository.saveUser(user: user);

    emit(user);
  }

  Future<void> onCheck() async {
    UserModel? user = await UserRepository.getUser();
    if (user != null) {
      ///Attach token push
      ConfigApplication.setDeviceToken();

      ///Trick Offline get token issue firebase
      double delay = 0.0;
      while (ConfigApplication.device?.token == null && delay <= 2) {
        await Future.delayed(const Duration(milliseconds: 500));
        delay += 0.25;
      }

      ///Save user
      await onSaveUser(user);

      // ///Refresh token

      if (user.token != null) {
        final result = await UserRepository.validateToken(user.token!);
        if (result) {
          ///Update user
          final u = await onLoadUser(user.token!);
          await onSaveUser(u!);
          AppBloc.authenticationBloc.add(const AuthenticationStatusChanged(
              AuthenticationStatus.authenticated));
        } else {
          final result1 =
              await AuthenticationRepository.refreshToken(user.refreshToken);
          if (result1 != null) {
            await onSaveUser(result1);
            AppBloc.authenticationBloc.add(const AuthenticationStatusChanged(
                AuthenticationStatus.authenticated));
          } else {
            AppBloc.authenticationBloc.add(const AuthenticationStatusChanged(
                AuthenticationStatus.unauthenticated));
          }
        }
      }
    } else {
      ///Notify
      AppBloc.authenticationBloc.add(const AuthenticationStatusChanged(
          AuthenticationStatus.unauthenticated));
    }
  }

  ///onAuthSync
  Future<void> onSave(UserModel user) async {
    ///Save user
    await onSaveUser(user);

    ///Notify
    AppBloc.authenticationBloc.add(
        const AuthenticationStatusChanged(AuthenticationStatus.authenticated));
  }

  void onClear() {
    emit(null);
  }
}
