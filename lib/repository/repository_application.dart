import 'package:flutter/material.dart';
import 'package:flutter_app/api/api.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_app/models/model_language.dart';

class ApplicationRepository {
  static Future<LanguageModel> getLanguages(Locale locale) async {
    final result = await Api.requestLanguages(locale.languageCode);
    final Map<String, dynamic> jsonMap;
    if (result.success) {
      final language = LanguageModel.fromJson(result.data);

      language.toJsonLanguageData();
      if (language.languageData.isNotEmpty) {
        return language;
      }
    }

    jsonMap = await UtilAsset.loadJson(
      "assets/locale/${locale.languageCode}.json",
    );
    final list = jsonMap.entries
        .map((e) => LanguageItem(key: e.key, value: e.value))
        .toList();
    final languages =
        LanguageModel(languageCode: locale.languageCode, languageData: list);
    return languages;
  }

  static Future<bool> addNewLanguage(
      String languageCode, String languageKey, String newData) async {
    try {
      final data = {
        "languageCode": languageCode,
        "languageKey": languageKey,
        "value": newData
      };
      final result = await Api.requestAddNewLanguage(data);
      return result.success;
    } catch (e) {
      UtilLogger.log("ERROR", e);
      return false;
    }
  }

  static Future<bool> editLanguage(
      String languageCode, String languageKey, String newData) async {
    try {
      final data = {
        "languageCode": languageCode,
        "languageKey": languageKey,
        "value": newData
      };
      final result = await Api.requestEditLanguage(data);
      return result.success;
    } catch (e) {
      UtilLogger.log("ERROR", e);
      return false;
    }
  }

  static Future<bool> deleteLanguage(
      String languageCode, String languageKey) async {
    try {
      final data = {"languageCode": languageCode, "languageKey": languageKey};
      final result = await Api.requestAddNewLanguage(data);
      return result.success;
    } catch (e) {
      UtilLogger.log("ERROR", e);
      return false;
    }
  }

  ///Singleton factory
  static final ApplicationRepository _instance =
      ApplicationRepository._internal();

  factory ApplicationRepository() {
    return _instance;
  }

  ApplicationRepository._internal();
}
