import 'package:bloc/bloc.dart';
import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/constants/cms_constants.dart';
import 'package:flutter_app/common/utils/utils.dart';

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
    await ConfigPreferences.setPreferences();

    ///Read/Save Device Information
    await ConfigApplication.setDevice();

    ///Get old Theme & Font & Language
    final oldTimeZone =
        UtilPreferences.getBool(ConfigPreferences.localTimeZone);

    ///Set timezone
    if (oldTimeZone == false) {
      ConfigApplication.localTimeZone = false;
    }

    ///Setup Language
    if (CmsConstants.multipleLanguages) {
      final oldLanguage = UtilPreferences.getString(ConfigPreferences.language);
      if (oldLanguage != null) {
        AppBloc.languageCubit.onUpdate(Locale(oldLanguage));
      }
    }

    if (CmsConstants.rememberLogin) await AppBloc.userCubit.onCheck();

    ///Done
    emit(ApplicationState.completed);
  }

  ///On Change Timezone
  void onChangeTimeZone(bool localTimeZone) async {
    emit(ApplicationState.loading);
    ConfigApplication.localTimeZone = localTimeZone;
    await UtilPreferences.setBool(
      ConfigPreferences.localTimeZone,
      localTimeZone,
    );
    await Future.delayed(const Duration(milliseconds: 500));
    emit(ApplicationState.completed);
  }
}
