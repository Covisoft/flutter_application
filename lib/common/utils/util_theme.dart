import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/models/model.dart';
import 'package:flutter/material.dart';

class UtilTheme {
  static ThemeData getTheme({
    required ThemeModel theme,
    required Brightness brightness,
    String? font,
  }) {
    ColorScheme? colorScheme;
    switch (brightness) {
      case Brightness.light:
        colorScheme = ColorScheme.light(
          primary: theme.primary,
          secondary: theme.secondary,
          surface: Colors.white,
          background: const Color(0xfffcfcfc),
          error: Colors.red,
        );
        break;
      case Brightness.dark:
        colorScheme = ColorScheme.dark(
          primary: theme.primary,
          secondary: theme.secondary,
          surface: const Color(0xff121212),
          background: const Color(0xff010101),
          error: Colors.red,
        );
        break;
      default:
    }

    final isDark = colorScheme!.brightness == Brightness.dark;
    final appBarColor = isDark ? colorScheme.surface : colorScheme.background;
    final indicatorColor = isDark ? colorScheme.onSurface : colorScheme.primary;

    var dialogTheme = DialogTheme(
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
    var appBarTheme = AppBarTheme(
      backgroundColor: appBarColor,
      foregroundColor: isDark ? Colors.white : Colors.black,
    );

    var textTheme = TextTheme(
        headline1: TextStyle(
            color: colorScheme.onBackground, fontSize: 40, fontFamily: font),
        headline2: TextStyle(
            color: colorScheme.onBackground, fontSize: 36, fontFamily: font),
        headline3: TextStyle(
            color: colorScheme.onBackground, fontSize: 32, fontFamily: font),
        headline4: TextStyle(
            color: colorScheme.onBackground, fontSize: 28, fontFamily: font),
        headline5: TextStyle(
            color: colorScheme.onBackground, fontSize: 24, fontFamily: font),
        headline6: TextStyle(
            color: colorScheme.onBackground, fontSize: 20, fontFamily: font),
        bodyText1: TextStyle(
            color: colorScheme.onBackground, fontSize: 16, fontFamily: font),
        subtitle1: TextStyle(
            color: colorScheme.onBackground, fontSize: 12, fontFamily: font),
        button: TextStyle(
            color: colorScheme.onBackground, fontSize: 18, fontFamily: font));
    var primaryTextTheme = TextTheme(
        headline1: TextStyle(
            color: colorScheme.primary, fontSize: 40, fontFamily: font),
        headline2: TextStyle(
            color: colorScheme.primary, fontSize: 36, fontFamily: font),
        headline3: TextStyle(
            color: colorScheme.primary, fontSize: 32, fontFamily: font),
        headline4: TextStyle(
            color: colorScheme.primary, fontSize: 28, fontFamily: font),
        headline5: TextStyle(
            color: colorScheme.primary, fontSize: 24, fontFamily: font),
        headline6: TextStyle(
            color: colorScheme.primary, fontSize: 20, fontFamily: font),
        bodyText1: TextStyle(
            color: colorScheme.primary, fontSize: 16, fontFamily: font),
        subtitle1: TextStyle(
            color: colorScheme.primary, fontSize: 12, fontFamily: font),
        button: TextStyle(
            color: colorScheme.primary, fontSize: 18, fontFamily: font));

    return ThemeData(
      brightness: colorScheme.brightness,
      primaryColor: colorScheme.primary,
      appBarTheme: appBarTheme,
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      bottomAppBarColor: colorScheme.surface,
      cardColor: colorScheme.surface,
      dividerColor: colorScheme.onSurface.withOpacity(0.12),
      backgroundColor: colorScheme.background,
      dialogBackgroundColor: colorScheme.background,
      errorColor: colorScheme.error,
      indicatorColor: indicatorColor,
      applyElevationOverlayColor: isDark,
      colorScheme: colorScheme,
      textTheme: textTheme,
      primaryTextTheme: primaryTextTheme,

      ///Custom
      fontFamily: font,
      dialogTheme: dialogTheme,
    );
  }

  static String langDarkOption(DarkOption option) {
    switch (option) {
      case DarkOption.dynamic:
        return "dynamic_theme";
      case DarkOption.alwaysOff:
        return "always_off";
      case DarkOption.alwaysOn:
        return "always_on";
      default:
        return "dynamic_theme";
    }
  }

  ///Singleton factory
  static final _instance = UtilTheme._internal();

  factory UtilTheme() {
    return _instance;
  }

  UtilTheme._internal();
}
