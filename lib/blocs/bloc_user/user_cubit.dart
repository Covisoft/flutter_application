import 'package:bloc/bloc.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_app/models/model.dart';
import 'package:flutter_app/repository/repository.dart';

class UserCubit extends Cubit<UserModel?> {
  UserCubit() : super(null);

  // ///On load user
  // Future<UserModel?> onLoadUser() async {
  //   ///Fetch API via repository
  //   final result = await UserRepository.getUserRemote();

  //   ///Case API success
  //   if (result != null) {
  //     await onSaveUser(result);
  //     return result;
  //   }
  // }

  ///Only save to state
  Future<void> onSetUser(UserModel user) async {
    emit(user);
  }

  ///On save user
  Future<void> onSaveUser(UserModel user) async {
    await UserRepository.saveUser(user: user);

    emit(user);
  }

}
