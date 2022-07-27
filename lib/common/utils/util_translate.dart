import 'package:flutter_app/api/api.dart';
import 'package:flutter_app/app_locale_delegate.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/model.dart';

class Translate {
  final Locale locale;
  static const LocalizationsDelegate<Translate> delegate = AppLocaleDelegate();
  late Map<String, String> _localizedStrings;

  Translate(this.locale);

  static Translate of(BuildContext context) {
    return Localizations.of<Translate>(context, Translate)!;
  }

  Future<bool> load() async {
    
    final result = await Api.requestLanguages(locale.languageCode);
    final Map<String, dynamic> jsonMap;
    if (result.success) {
       
      final language = LanguageModel.fromJson(result.data);
      language.toJsonLanguageData();
      if (language.languageData.isNotEmpty) {
        jsonMap = language.toJsonLanguageData();
      } else {
        jsonMap = await UtilAsset.loadJson(
          "assets/locale/${locale.languageCode}.json",
        );
      }
    } else {
      jsonMap = await UtilAsset.loadJson(
        "assets/locale/${locale.languageCode}.json",
      );
    }

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  String translate(String key) {
    return _localizedStrings[key] ?? key;
  }
}
