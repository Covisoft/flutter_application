import 'package:flutter_app/models/model.dart';

class APIUser {

  static Future<ResultModel> requestUser() async {
    await Future.delayed(const Duration(seconds: 1));
    // final result = await httpManager.get(url: user);
    final result = {
      'success': true,
      'data': {
        "user": {
          "_id": "qrcode",
          "available_earnings": "",
          "username": "qrcode",
        },
        "token": 'token',
      }
    };
    return ResultModel.fromJson(result);
  }
}
