import 'package:dio/dio.dart';
import 'package:flutter_app/models/model.dart';

import 'api.dart';

class APIUser {
  static Future<ResultModel> getInfoUser(String token) async {
    final result = await Api.httpManager.get(
        url: Api.user,
        options: Options(headers: {"Authorization": "Bearer $token"}));
    return ResultModel.fromJson(result);
  }
}
