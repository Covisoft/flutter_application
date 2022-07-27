import 'package:flutter_app/models/model.dart';

import 'api.dart';

class APIAuthentication {
  static Future<ResultModel> requestLogin(params) async {
    final result = await Api.httpManager.post(url: Api.login, data: params);
    return ResultModel.fromJson(result);
  }

  static Future<ResultModel> requestValidateToken(token) async {
    final result =
        await Api.httpManager.get(url: '${Api.validateToken}?token=$token');
    return ResultModel.fromJson(result);
  }

  static Future<ResultModel> requestRefreshToken(tokenRefresh) async {
    final result = await Api.httpManager
        .get(url: '${Api.refreshToken}?tokenRefresh=$tokenRefresh');

    return ResultModel.fromJson(result);
  }
}
