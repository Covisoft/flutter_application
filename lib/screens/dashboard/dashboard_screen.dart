import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common/configs/config.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> dashboardButtons = [
      _ButtonDashboardWidget(
        title: 'Manager Staff',
        onTap: () {},
      ),
      Container(
        height: ConfigSize.SPACING_SIZE_9,
        color: Colors.black,
      ),
      Container(
        height: ConfigSize.SPACING_SIZE_9,
        color: Colors.black,
      ),
      Container(
        height: ConfigSize.SPACING_SIZE_9,
        color: Colors.black,
      ),
      Container(
        height: ConfigSize.SPACING_SIZE_9,
        color: Colors.black,
      ),
      Container(
        height: ConfigSize.SPACING_SIZE_9,
        color: Colors.black,
      ),
      Container(
        height: ConfigSize.SPACING_SIZE_9,
        color: Colors.black,
      )
    ];
    return SafeArea(
      child: Scaffold(
          body: GridView.builder(
        itemCount: dashboardButtons.length,
        padding: EdgeInsets.all(ConfigSize.SPACING_SIZE_2),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ConfigSize.screenWidth~/(ConfigSize.SPACING_SIZE_9*2),
            crossAxisSpacing: ConfigSize.SPACING_SIZE_2,
            mainAxisSpacing: ConfigSize.SPACING_SIZE_2),
        itemBuilder: (context, index) {
          return dashboardButtons[index];
        },
      )),
    );
  }
}

class _ButtonDashboardWidget extends StatelessWidget {
  _ButtonDashboardWidget({
    Key? key,
    this.icon,
    required this.title,
    this.titleStyle,
    this.subtitle,
    this.subtitleStyle,
    required this.onTap,
  }) : super(key: key);
  Widget? icon;
  final String title;
  TextStyle? titleStyle;
  String? subtitle;
  TextStyle? subtitleStyle;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: ConfigSize.SPACING_SIZE_9,
        padding: EdgeInsets.all(ConfigSize.SPACING_SIZE_1),
        decoration: BoxDecoration(
            color: ConfigColor.primaryLight,
            borderRadius: BorderRadius.circular(ConfigSize.RADIUS_SIZE_2),
            boxShadow: [
              BoxShadow(
                  color: ConfigColor.secondary,
                  blurRadius: ConfigSize.RADIUS_SIZE_2)
            ]),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          if (icon != null)
            SizedBox(
              height: ConfigSize.SPACING_SIZE_4,
              width: ConfigSize.SPACING_SIZE_4,
              child: icon,
            ),
          Padding(
            padding: EdgeInsets.only(top: ConfigSize.SPACING_SIZE_2),
            child: AutoSizeText(title,
                textAlign: TextAlign.center,
                minFontSize: ConfigText.MIN_FONT_SIZE,
                style: titleStyle ??
                    ConfigText.headline4
                        .copyWith(color: ConfigColor.buttonPrimary)),
          ),
          if (subtitle != null)
            Padding(
              padding: EdgeInsets.only(top: ConfigSize.SPACING_SIZE_2),
              child: AutoSizeText(subtitle!,
                  minFontSize: ConfigText.MIN_FONT_SIZE,
                  style: subtitleStyle ??
                      ConfigText.headline4
                          .copyWith(color: ConfigColor.buttonPrimary)),
            )
        ]),
      ),
    );
  }
}
