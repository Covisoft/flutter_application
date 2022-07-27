import 'package:flutter/material.dart';
import 'package:flutter_app/common/configs/config.dart';

class AppListTitle extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final bool border;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;

  const AppListTitle({
    Key? key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.onPressed,
    this.border = true,
    this.backgroundColor,
    this.titleStyle,
    this.subtitleStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Border? borderWidget;
    Widget subTitle = Container();
    Widget leadingWidget = const SizedBox(width: 16);
    if (leading != null) {
      leadingWidget = Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: leading,
      );
    }
    if (subtitle != null) {
      subTitle = Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          subtitle!,
          style: subtitleStyle ?? ConfigText.subtitle,
        ),
      );
    }
    if (border) {
      borderWidget = Border(
        bottom: BorderSide(
          width: 1,
          color: Theme.of(context).dividerColor,
        ),
      );
    }
    return InkWell(
      onTap: onPressed,
      child: Container(
        color: backgroundColor ?? ConfigColor.cardPrimary,
        child: Row(
          children: [
            leadingWidget,
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: borderWidget,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: ConfigSize.SPACING_SIZE_2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: titleStyle ?? ConfigText.headline6,
                            ),
                            subTitle
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: ConfigSize.SPACING_SIZE_2),
                      child: trailing ?? Container(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
