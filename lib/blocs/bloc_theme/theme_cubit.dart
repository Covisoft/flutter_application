import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_app/models/model.dart';
import 'package:flutter/material.dart';

class ThemeState {
  final ThemeModel theme;
  final ThemeData lightTheme;
  final ThemeData darkTheme;
  final String? font;
  final DarkOption darkOption;

  ThemeState({
    required this.theme,
    required this.lightTheme,
    required this.darkTheme,
    this.font,
    required this.darkOption,
  });

  factory ThemeState.fromDefault() {
    return ThemeState(
      theme: ConfigAppTheme.defaultTheme,
      lightTheme: UtilTheme.getTheme(
        theme: ConfigAppTheme.defaultTheme,
        brightness: ConfigAppTheme.defaultBrightness,
        font: ConfigAppTheme.defaultFont,
      ),
      darkTheme: UtilTheme.getTheme(
        theme: ConfigAppTheme.defaultTheme,
        brightness: ConfigAppTheme.defaultBrightness,
        font: ConfigAppTheme.defaultFont,
      ),
      font: ConfigAppTheme.defaultFont,
      darkOption: ConfigAppTheme.darkThemeOption,
    );
  }
}

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.fromDefault());

  void onChangeTheme({
    ThemeModel? theme,
    String? font,
    DarkOption? darkOption,
  }) async {
    ///Setup Theme with setting darkOption
    final currentState = state;
    theme ??= currentState.theme;
    font ??= currentState.font;
    darkOption ??= currentState.darkOption;

    ThemeState themeState;

    switch (darkOption) {
      case DarkOption.dynamic:
        UtilPreferences.setString(ConfigPreferences.darkOption, 'dynamic');
        themeState = ThemeState(
          theme: theme,
          lightTheme: UtilTheme.getTheme(
            theme: theme,
            brightness: Brightness.light,
            font: font,
          ),
          darkTheme: UtilTheme.getTheme(
            theme: theme,
            brightness: Brightness.light,
            font: font,
          ),
          font: font,
          darkOption: darkOption,
        );
        break;
      case DarkOption.alwaysOn:
        UtilPreferences.setString(ConfigPreferences.darkOption, 'on');
        themeState = ThemeState(
          theme: theme,
          lightTheme: UtilTheme.getTheme(
            theme: theme,
            brightness: Brightness.dark,
            font: font,
          ),
          darkTheme: UtilTheme.getTheme(
            theme: theme,
            brightness: Brightness.dark,
            font: font,
          ),
          font: font,
          darkOption: darkOption,
        );
        break;
      case DarkOption.alwaysOff:
        UtilPreferences.setString(ConfigPreferences.darkOption, 'off');
        themeState = ThemeState(
          theme: theme,
          lightTheme: UtilTheme.getTheme(
            theme: theme,
            brightness: Brightness.light,
            font: font,
          ),
          darkTheme: UtilTheme.getTheme(
            theme: theme,
            brightness: Brightness.light,
            font: font,
          ),
          font: font,
          darkOption: darkOption,
        );
        break;
    }

    ///Preference save
    UtilPreferences.setString(
      ConfigPreferences.theme,
      jsonEncode(themeState.theme.toJson()),
    );

    ///Preference save
    if (themeState.font != null) {
      UtilPreferences.setString(ConfigPreferences.font, themeState.font!);
    }

    ///Notify
    emit(themeState);
  }
}
