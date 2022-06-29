import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common/configs/config_color.dart';

class Tools {
  static Future<void> showInfoSnackBar(
    BuildContext context, {
    required String message,
    String? title,
    Duration duration = const Duration(seconds: 3),
    bool isError = false,
    FlushbarPosition position = FlushbarPosition.TOP,
    EdgeInsets margin = EdgeInsets.zero,
  }) async {
    await Flushbar(
      message: message,
      duration: duration,
      messageColor: ConfigColor.primary,
      borderRadius: BorderRadius.circular(10),
      title: title,
      margin: margin,
      backgroundColor: isError
          ? ConfigColor.error
          : ConfigColor.primary,
      flushbarPosition: position,
    ).show(context);
  }
}
