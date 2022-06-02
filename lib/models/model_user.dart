import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/models/model.dart';

class UserModel extends Equatable {
  final String id;
  final String username;
  String? token;
  bool active;

  UserModel({
    required this.id,
    required this.username,
    this.token,
    required this.active,
  });
  static UserModel empty = UserModel(id: '', username: '', active: false);

  void setActive(bool active) {
    this.active = active;
  }

  void setToken(String? token) {
    this.token = token;
  }


  factory UserModel.fromJson(json) {
    return UserModel(
      id: json['id'],
      username: json['username'] ?? '',
      token: json['token'] ?? AppBloc.userCubit.state?.token,
      active: false,
    );
  }

  factory UserModel.fromDatabase(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      username: json['username'] ?? '',
      token: json['token'],
      active: json['active'] == 1,
    );
  }

  Map<String, dynamic> toDatabase() {
    return {
      "id": id,
      "username": username,
      "token": token,
      "active": active == true ? 1 : 0,
    };
  }

  @override
  List<Object?> get props => [id, username, active];
}
