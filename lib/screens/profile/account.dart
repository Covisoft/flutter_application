import 'package:flutter_app/blocs/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_app/common/widgets/widget.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() {
    return _AccountState();
  }
}

class _AccountState extends State<Account> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  ///On logout
  void onLogout() async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(Translate.of(context).translate('log_out')),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  Translate.of(context).translate('would_you_like_log_out'),
                )
              ],
            ),
          ),
          actions: <Widget>[
            AppButton(
              text:Translate.of(context).translate('close'),
              onPressed: () {
                Navigator.pop(context, false);
              },
              type: ButtonType.text,
            ),
            AppButton(
              text:Translate.of(context).translate('log_out'),
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
          ],
        );
      },
    );
    if (result == true) {
      AppBloc.authenticationBloc.add(const AuthenticationLogoutRequested());
    }
  }

  ///On navigation
  void onNavigate(String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          SliverAppBar(
            pinned: true,
            centerTitle: true,
            title: Text(
              Translate.of(context).translate('account'),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: onLogout,
              ),
            ],
          ),
          SliverSafeArea(
            top: false,
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  AppListTitle(
                    title: Translate.of(context).translate('setting'),
                    leading: Icon(
                      Icons.settings_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      onNavigate(ConfigRoutes.setting);
                    },
                    trailing: Row(
                      children: const <Widget>[
                        Icon(
                          Icons.keyboard_arrow_right,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
