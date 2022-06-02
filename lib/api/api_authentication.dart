import 'package:flutter_app/models/model.dart';
import 'package:uuid/uuid.dart';

import 'api.dart';

class APIAuthentication {
  static Future<ResultModel> requestLogin(params) async {
    // final result = await Api.httpManager.post(url: Api.login, data: params);
    await Future.delayed(const Duration(seconds: 1));
    final result = {
      'success': true,
      'data': {
        "token": const Uuid().v4(),
      }
    };

    return ResultModel.fromJson(result);
  }

  static Future<ResultModel> requestRefreshToken(token) async {
    await Future.delayed(const Duration(seconds: 1));
    // final result = await httpManager.post(url: validateToken);
    final result = {
      'success': true,
      'data': {
        "token": const Uuid().v4(),
      }
    };
    return ResultModel.fromJson(result);
  }
}
