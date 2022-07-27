import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
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

    if(kIsWeb){
      await Firebase.initializeApp(
        options: const FirebaseOptions(  apiKey: "AIzaSyCMkeQgQa3OJbijsKNjtuJzBTuGKGlskjM",
            authDomain: "flutter-app-267e5.firebaseapp.com",
            projectId: "flutter-app-267e5",
            storageBucket: "flutter-app-267e5.appspot.com",
            messagingSenderId: "102743028778",
            appId: "1:102743028778:web:083003a9358a891d3a3f53")
      );
    }
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
    final firstOpenApp =
        UtilPreferences.getBool(ConfigPreferences.firstOpenApp);
      

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
