import 'package:flutter_app/models/model.dart';

class APIUser {
  static Future<ResultModel> getInfoUser(String token) async {
    await Future.delayed(const Duration(seconds: 1));
    // final result = await httpManager.get(url: user);

    final result = {
      'success': true,
      'data': {"id": 'idAdmin', 'username': 'admin'}
    };
    return ResultModel.fromJson(result);
  }
}
