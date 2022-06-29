import 'dart:async';

import 'package:flutter_app/blocs/bloc.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_app/common/widgets/widget.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() {
    return _SettingState();
  }
}

class _SettingState extends State<Setting> {
  bool localTimeZone = false;
  bool pushNotification = false;
  Timer? debounce;

  @override
  void initState() {
    super.initState();

    localTimeZone = ConfigApplication.localTimeZone;
  }

  @override
  void dispose() {
    debounce?.cancel();
    super.dispose();
  }

  ///Save and Sync setting
  void syncSetting() {}

  ///On Change Dark Option
  void onChangeLocalTimeZone(bool value) async {
    localTimeZone = value;
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(Translate.of(context).translate('local_timezone')),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  Translate.of(context).translate(
                    'would_you_like_apply_setting_timezone',
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            AppButton(
              text: Translate.of(context).translate('close'),
              onPressed: () {
                Navigator.pop(context, false);
              },
              type: ButtonType.text,
            ),
            AppButton(
              text: Translate.of(context).translate('apply'),
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
          ],
        );
      },
    );
    if (result == true) {
      Navigator.pop(context);
      await Future.delayed(const Duration(milliseconds: 500));
      AppBloc.applicationCubit.onChangeTimeZone(value);
    } else {
      setState(() {
        localTimeZone = !value;
      });
    }
  }

  ///On navigation
  void onNavigate(String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    String defaultFont = Translate.of(context).translate('default');
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: Text(
              Translate.of(context).translate('setting'),
            ),
            pinned: true,
          ),
          SliverSafeArea(
            top: false,
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(height: 8),
                AppListTitle(
                  leading: Icon(
                    Icons.language_outlined,
                    color: ConfigColor.primary,
                  ),
                  title: Translate.of(context).translate('language'),
                  onPressed: () {
                    onNavigate(ConfigRoutes.changeLanguage);
                  },
                  trailing: Row(
                    children: <Widget>[
                      Text(
                        UtilLanguage.getGlobalLanguageName(
                          AppBloc.languageCubit.state.languageCode,
                        ),
                        style: ConfigText.subtitle,
                      ),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
                AppListTitle(
                  leading: Icon(
                    Icons.more_time,
                    color: ConfigColor.primary,
                  ),
                  title: Translate.of(context).translate('local_timezone'),
                  trailing: CupertinoSwitch(
                    value: localTimeZone,
                    activeColor: ConfigColor.primary,
                    onChanged: onChangeLocalTimeZone,
                  ),
                ),
                AppListTitle(
                  leading: Icon(
                    Icons.notifications_active_outlined,
                    color: ConfigColor.primary,
                  ),
                  title: Translate.of(context).translate('notification'),
                  trailing: CupertinoSwitch(
                    value: pushNotification,
                    activeColor: ConfigColor.primary,
                    onChanged: (value) {
                      setState(() {
                        pushNotification = value;
                      });
                      syncSetting();
                    },
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
