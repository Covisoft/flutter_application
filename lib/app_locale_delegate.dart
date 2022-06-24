
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'common/configs/config.dart';
import 'common/utils/utils.dart';

class AppLocaleDelegate extends LocalizationsDelegate<Translate> {
  const AppLocaleDelegate();

  @override
  bool isSupported(Locale locale) {
    return ConfigAppLanguage.supportLanguage.contains(locale);
  }

  @override
  Future<Translate> load(Locale locale) async {
    switch (locale.languageCode) {
      case "en":
        timeago.setLocaleMessages('en', timeago.EnMessages());
        break;
      case "vi":
        timeago.setLocaleMessages('vi', timeago.ViMessages());
        break;
      default:
        timeago.setLocaleMessages('en', timeago.EnMessages());
    }

    Translate localizations = Translate(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(AppLocaleDelegate old) => false;
}
