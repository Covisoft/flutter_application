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
  DarkOption darkOption = DarkOption.dynamic;
  bool pushNotification = false;
  Timer? debounce;

  @override
  void initState() {
    super.initState();

    localTimeZone = Application.localTimeZone;
    darkOption = AppBloc.themeCubit.state.darkOption;
  }

  @override
  void dispose() {
    debounce?.cancel();
    super.dispose();
  }

  ///Save and Sync setting
  void syncSetting() {}

  ///On Change Dark Option
  void onChangeDarkOption() {
    AppBloc.themeCubit.onChangeTheme(darkOption: darkOption);
  }

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
              Translate.of(context).translate('close'),
              onPressed: () {
                Navigator.pop(context, false);
              },
              type: ButtonType.text,
            ),
            AppButton(
              Translate.of(context).translate('apply'),
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

  ///Show dark theme setting
  void showDarkModeSetting() async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        darkOption = AppBloc.themeCubit.state.darkOption;
        return AlertDialog(
          title: Text(Translate.of(context).translate('dark_mode')),
          content: StatefulBuilder(
            builder: (context, setState) {
              return SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    RadioListTile<DarkOption>(
                      title: Text(
                        Translate.of(context).translate(
                          UtilTheme.langDarkOption(DarkOption.dynamic),
                        ),
                      ),
                      activeColor: Theme.of(context).primaryColor,
                      value: DarkOption.dynamic,
                      groupValue: darkOption,
                      onChanged: (value) {
                        setState(() {
                          darkOption = DarkOption.dynamic;
                        });
                      },
                    ),
                    RadioListTile<DarkOption>(
                      title: Text(
                        Translate.of(context).translate(
                          UtilTheme.langDarkOption(DarkOption.alwaysOn),
                        ),
                      ),
                      activeColor: Theme.of(context).primaryColor,
                      value: DarkOption.alwaysOn,
                      groupValue: darkOption,
                      onChanged: (value) {
                        setState(() {
                          darkOption = DarkOption.alwaysOn;
                        });
                      },
                    ),
                    RadioListTile<DarkOption>(
                      title: Text(
                        Translate.of(context).translate(
                          UtilTheme.langDarkOption(DarkOption.alwaysOff),
                        ),
                      ),
                      activeColor: Theme.of(context).primaryColor,
                      value: DarkOption.alwaysOff,
                      groupValue: darkOption,
                      onChanged: (value) {
                        setState(() {
                          darkOption = DarkOption.alwaysOff;
                        });
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          actions: <Widget>[
            AppButton(
              Translate.of(context).translate('close'),
              onPressed: () {
                Navigator.pop(context, false);
              },
              type: ButtonType.text,
            ),
            AppButton(
              Translate.of(context).translate('apply'),
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
          ],
        );
      },
    );
    if (result == true) {
      onChangeDarkOption();
    } else {
      darkOption = AppBloc.themeCubit.state.darkOption;
    }
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
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Translate.of(context).translate('language'),
                  onPressed: () {
                    onNavigate(Routes.changeLanguage);
                  },
                  trailing: Row(
                    children: <Widget>[
                      Text(
                        UtilLanguage.getGlobalLanguageName(
                          AppBloc.languageCubit.state.languageCode,
                        ),
                        style: Theme.of(context).textTheme.caption,
                      ),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
                AppListTitle(
                  leading: Icon(
                    Icons.more_time,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Translate.of(context).translate('local_timezone'),
                  trailing: CupertinoSwitch(
                    value: localTimeZone,
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: onChangeLocalTimeZone,
                  ),
                ),
                AppListTitle(
                  leading: Icon(
                    Icons.notifications_active_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Translate.of(context).translate('notification'),
                  trailing: CupertinoSwitch(
                    value: pushNotification,
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: (value) {
                      setState(() {
                        pushNotification = value;
                      });
                      syncSetting();
                    },
                  ),
                ),
                AppListTitle(
                  leading: Icon(
                    Icons.color_lens_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Translate.of(context).translate('theme'),
                  onPressed: () {
                    onNavigate(Routes.themeSetting);
                  },
                  trailing: Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 16,
                    height: 16,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                AppListTitle(
                  leading: Icon(
                    Icons.nights_stay_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Translate.of(context).translate('dark_mode'),
                  onPressed: showDarkModeSetting,
                  trailing: Row(
                    children: <Widget>[
                      Text(
                        Translate.of(context).translate(
                          UtilTheme.langDarkOption(darkOption),
                        ),
                        style: Theme.of(context).textTheme.caption,
                      ),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
                AppListTitle(
                  leading: Icon(
                    Icons.font_download_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Translate.of(context).translate('font'),
                  onPressed: () {
                    onNavigate(Routes.fontSetting);
                  },
                  trailing: Row(
                    children: <Widget>[
                      Text(
                        AppBloc.themeCubit.state.font ?? defaultFont,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                  border: false,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
