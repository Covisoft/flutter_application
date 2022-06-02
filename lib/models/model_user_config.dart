class UserConfigModel {
  final bool enablePushNotification;
  final bool alertLogin;

  UserConfigModel({
    required this.enablePushNotification,
    required this.alertLogin,
  });
  factory UserConfigModel.fromJson(Map<String, dynamic> json) {
    return UserConfigModel(
      enablePushNotification: json['push_notification'] ?? false,
      alertLogin: json['alert_login'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'push_notification': enablePushNotification,
      'alert_login': alertLogin,
    };
  }
}
