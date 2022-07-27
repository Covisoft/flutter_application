import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  late String fullName;
  late String phoneNumber;
  late List<Role> roles;
  String? avatar;
  String? address;
  bool? isChangedPass;
  late String id;
  String? token;
  String? refreshToken;
  late bool active;
  UserModel(
      {required this.fullName,
      required this.phoneNumber,
      required this.roles,
      this.avatar,
      this.address,
      this.isChangedPass,
      required this.id,  this.token,
      this.refreshToken,
    required this.active,});

void setActive(bool active) {
  this.active = active;
}
void setToken(String? token) {
  this.token = token;
}
void setRefreshToken(String? refreshToken) {
  this.refreshToken = refreshToken;
}
  UserModel.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    phoneNumber = json['phoneNumber'];
    roles = <Role>[];
    json['roles'].forEach((v) {
      roles.add(Role.fromJson(v));
    });
    avatar = json['avatar'];
    address = json['address'];
    isChangedPass = json['isChangedPass'];
    id = json['id'];
    token = json['token'];
    refreshToken = json['refreshToken'];
    active = true;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullName'] = fullName;
    data['phoneNumber'] = phoneNumber;
    data['roles'] = roles.map((v) => v.toJson()).toList();
    data['avatar'] = avatar;
    data['address'] = address;
    data['isChangedPass'] = isChangedPass;
    data['id'] = id;
    data['token'] = token;
    data['active'] = active;
    data['refreshToken'] = refreshToken;
    return data;
  }

  @override
  List<Object?> get props => [];
}

class Role extends Equatable {
 late  String roleName;
 late  List<Permission> permissions;
 late  String id;

  Role({required this.roleName, required this.permissions, required this.id});

  Role.fromJson(Map<String, dynamic> json) {
    roleName = json['roleName'];
    if (json['permissions'] != null) {
      permissions = <Permission>[];
      json['permissions'].forEach((v) {
        permissions.add(Permission.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['roleName'] = roleName;
    data['permissions'] = permissions.map((v) => v.toJson()).toList();
    data['id'] = id;
    return data;
  }

  @override
  List<Object?> get props => [];
}

class Permission extends Equatable {
 late String permissionName;
 late String id;

  Permission({required this.permissionName, required this.id});

  Permission.fromJson(Map<String, dynamic> json) {
    permissionName = json['permissionName'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['permissionName'] = permissionName;
    data['id'] = id;
    return data;
  }

  @override
  List<Object?> get props => [];
}
