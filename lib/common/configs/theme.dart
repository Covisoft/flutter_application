import 'package:flutter_app/models/model.dart';

enum DarkOption { dynamic, alwaysOn, alwaysOff }

class AppTheme {
  ///Default font
  static const String defaultFont = 'ProximaNova';

  ///List Font support
  static final List<String> fontSupport = [
    "OpenSans",
    "ProximaNova",
    "Raleway",
    "Roboto",
    "Merriweather",
  ];

  ///Default Theme
  static final ThemeModel defaultTheme = ThemeModel.fromJson({
    "name": "default",
    "primary": 'ff82B541',
    "secondary": "ffff8a65",
    "error": 'FFDC3545',
    "success": 'FF28A745',
    'warning': 'FFFFC107',
    'dark': 'ff010101',
    'light': 'fffcfcfc',
  });

  ///List Theme Support in Application
  static final List<ThemeModel> themeSupport = [
    {
      "name": "default",
      "primary": 'ff82B541',
      "secondary": "ffff8a65",
      "error": 'FFDC3545',
      "success": 'FF28A745',
      'warning': 'FFFFC107',
      'dark': 'ff010101',
      'light': 'fffcfcfc',
    },
    {
      "name": "orange",
      "primary": 'fff4a261',
      "secondary": "ff2A9D8F",
      "error": 'FFDC3545',
      "success": 'FF28A745',
      'warning': 'FFFFC107',
      'dark': 'ff010101',
      'light': 'fffcfcfc',
    },
    {
      "name": "blue",
      "primary": 'ff077ef0',
      "secondary": "ff5B876C",
      "error": 'FFDC3545',
      "success": 'FF28A745',
      'warning': 'FFFFC107',
      'dark': 'ff010101',
      'light': 'fffcfcfc',
    },
    {
      "name": "summer",
      "primary": 'ff53ac7d',
      "secondary": "ff832400",
      "error": 'FFDC3545',
      "success": 'FF28A745',
      'warning': 'FFFFC107',
      'dark': 'ff010101',
      'light': 'fffcfcfc',
    },
  ].map((item) => ThemeModel.fromJson(item)).toList();

  ///Dark Theme option
  static const DarkOption darkThemeOption = DarkOption.dynamic;

  ///Singleton factory
  static final AppTheme _instance = AppTheme._internal();

  factory AppTheme() {
    return _instance;
  }

  AppTheme._internal();
}
