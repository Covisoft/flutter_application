import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

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
      messageColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      title: title,
      margin: margin,
      backgroundColor: isError
          ? Theme.of(context).errorColor
          : Theme.of(context).primaryColor,
      flushbarPosition: position,
    ).show(context);
  }
}
