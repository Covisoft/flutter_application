import 'package:flutter/material.dart';
import 'package:flutter_app/common/configs/config.dart';

enum ButtonType { outline, text, normal }

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  final bool loading;
  final bool disabled;
  final ButtonType type;
  Widget? icon;
  final MainAxisSize mainAxisSize;
  final bool usedPrimaryColor;
  AppButton({
    Key? key,
    required this.text,
    this.textStyle,
    required this.onPressed,
    this.loading = false,
    this.disabled = false,
    this.usedPrimaryColor = false,
    this.type = ButtonType.normal,
    this.mainAxisSize = MainAxisSize.min,
  }) : super(key: key);

  AppButton.outline({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textStyle,
    this.loading = false,
    this.disabled = false,
    this.usedPrimaryColor = false,
    this.type = ButtonType.normal,
    this.mainAxisSize = MainAxisSize.min,
  }) : super(key: key);
  AppButton.withIcon({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textStyle,
    required this.icon,
    this.loading = false,
    this.disabled = false,
    this.usedPrimaryColor = false,
    this.type = ButtonType.normal,
    this.mainAxisSize = MainAxisSize.min,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildLoading(Color color) {
      if (!loading) return Container();
      return Row(
        children: [
          const SizedBox(width: 8),
          SizedBox(
            width: 14,
            height: 14,
            child: CircularProgressIndicator(
              strokeWidth: 1.5,
              color: color,
            ),
          )
        ],
      );
    }

    if (icon != null) {
      switch (type) {
        case ButtonType.normal:
          return ElevatedButton.icon(
            onPressed: disabled ? null : onPressed,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(64, 44),
              primary: usedPrimaryColor
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).appBarTheme.foregroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: icon!,
            label: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  text,
                  style: textStyle ??
                      ConfigText.textTheme.button!
                          .copyWith(fontWeight: FontWeight.bold),
                ),
                buildLoading(Colors.white)
              ],
            ),
          );
        case ButtonType.outline:
          return OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(64, 44),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: disabled ? null : onPressed,
            icon: icon!,
            label: Row(
              mainAxisSize: mainAxisSize,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  text,
                  style: textStyle ??
                      ConfigText.textTheme.button!
                          .copyWith(fontWeight: FontWeight.bold),
                ),
                buildLoading(Theme.of(context).primaryColor)
              ],
            ),
          );
        case ButtonType.text:
          return TextButton.icon(
            onPressed: disabled ? null : onPressed,
            icon: icon!,
            label: Row(
              mainAxisSize: mainAxisSize,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  text,
                  style: textStyle ??
                      ConfigText.textTheme.button!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                ),
                buildLoading(Theme.of(context).primaryColor)
              ],
            ),
          );
      }
    } else {
      switch (type) {
        case ButtonType.normal:
          return ElevatedButton(
            onPressed: disabled ? null : onPressed,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(64, 44),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              mainAxisSize: mainAxisSize,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  text,
                  style: textStyle ??
                      ConfigText.textTheme.button!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                ),
                buildLoading(Colors.white)
              ],
            ),
          );
        case ButtonType.outline:
          return OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(64, 44),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: disabled ? null : onPressed,
            child: Row(
              mainAxisSize: mainAxisSize,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  text,
                  style: textStyle ??
                      ConfigText.textTheme.button!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                ),
                buildLoading(Theme.of(context).primaryColor)
              ],
            ),
          );
        case ButtonType.text:
          return TextButton(
            onPressed: disabled ? null : onPressed,
            child: Row(
              mainAxisSize: mainAxisSize,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  text,
                  style: textStyle ??
                      ConfigText.textTheme.button!.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                ),
                buildLoading(Theme.of(context).primaryColor)
              ],
            ),
          );
      }
    }
  }
}
