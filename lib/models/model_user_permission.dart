class UserPermissionModel {
  final bool pushNotification;
  final bool multipleDevice;

  UserPermissionModel({
    required this.pushNotification,
    required this.multipleDevice,
  });

  factory UserPermissionModel.fromJson(Map<String, dynamic> json) {
    return UserPermissionModel(
      pushNotification: json['push_notification'] ?? false,
      multipleDevice: json['email_notification'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'push_notification': pushNotification,
      'multiple_device': multipleDevice,
    };
  }
}
