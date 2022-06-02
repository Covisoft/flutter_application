import 'package:flutter_app/models/model.dart';

import 'api.dart';

class APIAuthentication {
  static Future<ResultModel> requestLogin(params) async {
    final result = await Api.httpManager.post(url: Api.login, data: params);

    return ResultModel.fromJson(result);
  }
}
