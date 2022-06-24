import 'package:bloc/bloc.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter/material.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(ConfigAppLanguage.defaultLanguage);

  ///On Change Language
  void onUpdate(Locale locale) {
    emit(locale);

    ///Preference save
    UtilPreferences.setString(
      ConfigPreferences.language,
      locale.languageCode,
    );
  }
}
