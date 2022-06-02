import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter/material.dart';

class ThemeModel {
  final String name;
  final Color primary;
  final Color secondary;
  final Color error;
  final Color success;
  final Color warning;
  final Color dark;
  final Color light;
  ThemeModel({
    required this.name,
    required this.primary,
    required this.secondary,
    required this.error,
    required this.success,
    required this.warning,
    required this.dark,
    required this.light,
  });

  factory ThemeModel.fromJson(Map<String, dynamic> json) {
    return ThemeModel(
      name: json['name'] ?? '',
      primary: UtilColor.getColorFromHex(json['primary']),
      secondary: UtilColor.getColorFromHex(json['secondary']),
      error: UtilColor.getColorFromHex(json['error']),
      success: UtilColor.getColorFromHex(json['success']),
      warning: UtilColor.getColorFromHex(json['warning']),
      dark: UtilColor.getColorFromHex(json['dark']),
      light: UtilColor.getColorFromHex(json['light']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "primary": UtilColor.getStringColor(primary),
      "secondary": UtilColor.getStringColor(secondary),
      "error": UtilColor.getStringColor(error),
      "success": UtilColor.getStringColor(success),
      "warning": UtilColor.getStringColor(warning),
      "dark": UtilColor.getStringColor(dark),
      "light": UtilColor.getStringColor(light),
    };
  }
}
