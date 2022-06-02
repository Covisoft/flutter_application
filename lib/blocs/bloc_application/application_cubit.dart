import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/constants/cms_constants.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_app/models/model.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

enum ApplicationState { loading, completed }

class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit() : super(ApplicationState.loading);

  ///On Setup Application
  void onSetup() async {
    ///Firebase init
    await Firebase.initializeApp();

    ///Setup SharedPreferences
    await Preferences.setPreferences();

    ///Read/Save Device Information
    await Application.setDevice();

    ///Get old Theme & Font & Language
    final oldTimeZone = UtilPreferences.getBool(Preferences.localTimeZone);

    DarkOption? darkOption;
    String? font;
    ThemeModel? theme;

    ///Set timezone
    if (oldTimeZone == false) {
      Application.localTimeZone = false;
    }

    ///Setup Language
    if (CmsConstants.multipleLanguages) {
      final oldLanguage = UtilPreferences.getString(Preferences.language);
      if (oldLanguage != null) {
        AppBloc.languageCubit.onUpdate(Locale(oldLanguage));
      }
    }

    ///Find font support available [Dart null safety issue]
    if (CmsConstants.multipleFonts) {
      final oldFont = UtilPreferences.getString(Preferences.font);
      try {
        font = AppTheme.fontSupport.firstWhere((item) {
          return item == oldFont;
        });
      } catch (e) {
        UtilLogger.log("ERROR", e);
      }
    }

    if (CmsConstants.multipleThemes) {
      final oldTheme = UtilPreferences.getString(Preferences.theme);
      final oldDarkOption = UtilPreferences.getString(Preferences.darkOption);
      if (oldTheme != null) {
        try {
          theme = ThemeModel.fromJson(jsonDecode(oldTheme));
        } catch (e) {
          UtilLogger.log("ERROR", e);
        }
      }

      ///check old dark option
      if (oldDarkOption != null) {
        switch (oldDarkOption) {
          case 'off':
            darkOption = DarkOption.alwaysOff;
            break;
          case 'on':
            darkOption = DarkOption.alwaysOn;
            break;
          default:
            darkOption = DarkOption.dynamic;
        }
      }
    }

    ///Setup Theme & Font with dark Option
    AppBloc.themeCubit.onChangeTheme(
      theme: theme,
      font: font,
      darkOption: darkOption,
    );
    await Future.delayed(const Duration(milliseconds: 1000));

    ///Done
    emit(ApplicationState.completed);
  }

  ///On Change Timezone
  void onChangeTimeZone(bool localTimeZone) async {
    emit(ApplicationState.loading);
    Application.localTimeZone = localTimeZone;
    await UtilPreferences.setBool(
      Preferences.localTimeZone,
      localTimeZone,
    );
    await Future.delayed(const Duration(milliseconds: 500));
    emit(ApplicationState.completed);
  }
}
