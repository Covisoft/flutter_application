import 'package:flutter_app/api/api.dart';
import 'package:flutter_app/models/model.dart';

class APIApplication {
  static Future<ResultModel> requestLanguages(languageCode) async {
    final result = await Api.httpManager.get(url: "${Api.language}/$languageCode");
    return ResultModel.fromJson(result);
  }
  static Future<ResultModel> requestEditLanguage(params) async {
    final result = await Api.httpManager.put(url: Api.language,data: params );
    return ResultModel.fromJson(result);
  }
  static Future<ResultModel> requestAddNewLanguage(params) async {
    final result = await Api.httpManager.post(url: Api.language,data: params);
    return ResultModel.fromJson(result);
  }
    static Future<ResultModel> requestDeleteLanguage(params) async {
    final result = await Api.httpManager.delete(url: Api.language,data: params);
    return ResultModel.fromJson(result);
  }
}