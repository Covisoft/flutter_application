import 'package:flutter/material.dart';
import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_app/common/widgets/widget.dart';

class AppDrawerMenu extends StatefulWidget {
  const AppDrawerMenu({Key? key}) : super(key: key);

  @override
  State<AppDrawerMenu> createState() => _AppDrawerMenuState();
}

class _AppDrawerMenuState extends State<AppDrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SizedBox(
          width: ConfigSize.screenWidth,
          height: ConfigSize.screenHeight,
          child: Column(
            children: const <Widget>[
              _HeaderWidget(),
              Expanded(child: _BodyWidget()),
              //Sign out button
              _SignOutButton()
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onNavigate(String route) {
      Navigator.pushNamed(context, route);
    }

    return Column(
      children: [
        AppListTitle(
          title: Translate.of(context).translate('setting'),
          leading: Icon(
            Icons.settings_outlined,
            color: ConfigColor.primary,
          ),
          onPressed: () {
            onNavigate(ConfigRoutes.setting);
          },
          trailing: Row(
            children: <Widget>[
              Icon(
                Icons.keyboard_arrow_right,
                color: ConfigColor.primary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SignOutButton extends StatelessWidget {
  const _SignOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                text: Translate.of(context).translate('close'),
                onPressed: () {
                  Navigator.pop(context, false);
                },
                type: ButtonType.text,
              ),
              AppButton(
                text: Translate.of(context).translate('log_out'),
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

    return Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: AppListTitle(
          title: Translate.of(context).translate('sign_out'),
          leading: Container(),
          onPressed: onLogout,
          trailing: Row(
            children: <Widget>[
              Icon(
                Icons.logout,
                color: ConfigColor.primary,
              ),
            ],
          ),
        ));
  }
}
