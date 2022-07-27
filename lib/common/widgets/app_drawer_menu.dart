import 'package:flutter/material.dart';
import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_app/common/widgets/widget.dart';

const int DASHBOARD_INDEX = 0;
const int SALE_INDEX = 1;
const int VENDOR_INDEX = 2;
const int PRODUCT_INDEX = 3;
const int WAREHOUSE_INDEX = 4;
const int RECEIPTS_EXPENSES_INDEX = 5;
const int REPORT_INDEX = 6;
const int STAFF_INDEX = 7;
const int SETTING_INDEX = 8;

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
        child: Container(
          width: ConfigSize.screenWidth,
          height: ConfigSize.screenHeight,
          color: ConfigColor.primary,
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
          title: "Dashboard",
          leading: Icon(
            Icons.dashboard_outlined,
            color: ConfigColor.primaryLight,
          ),
          onPressed: () {
            // onNavigate(ConfigRoutes.setting);
            AppBloc.pageViewCubit.onChangePage(DASHBOARD_INDEX);
            if (!ConfigSize.isWeb) Navigator.pop(context);
          },
          trailing: Row(
            children: <Widget>[
              Icon(
                Icons.keyboard_arrow_right,
                color: ConfigColor.primaryLight,
              ),
            ],
          ),
        ),
        AppListTitle(
          title: Translate.of(context).translate('sale'),
          leading: Icon(
            Icons.shopping_cart_outlined,
            color: ConfigColor.primaryLight,
          ),
          onPressed: () {
            // onNavigate(ConfigRoutes.setting);
            AppBloc.pageViewCubit.onChangePage(SALE_INDEX);
            if (!ConfigSize.isWeb) Navigator.pop(context);
          },
          trailing: Row(
            children: <Widget>[
              Icon(
                Icons.keyboard_arrow_right,
                color: ConfigColor.primaryLight,
              ),
            ],
          ),
        ),
        AppListTitle(
          title: Translate.of(context).translate('vendor'),
          leading: Icon(
            Icons.people_outline,
            color: ConfigColor.primaryLight,
          ),
          onPressed: () {
            // onNavigate(ConfigRoutes.setting);
            AppBloc.pageViewCubit.onChangePage(VENDOR_INDEX);
            if (!ConfigSize.isWeb) Navigator.pop(context);
          },
          trailing: Row(
            children: <Widget>[
              Icon(
                Icons.keyboard_arrow_right,
                color: ConfigColor.primaryLight,
              ),
            ],
          ),
        ),
        AppListTitle(
          title: Translate.of(context).translate('product'),
          leading: Icon(
            Icons.category_outlined,
            color: ConfigColor.primaryLight,
          ),
          onPressed: () {
            // onNavigate(ConfigRoutes.setting);
            AppBloc.pageViewCubit.onChangePage(PRODUCT_INDEX);
            if (!ConfigSize.isWeb) Navigator.pop(context);
          },
          trailing: Row(
            children: <Widget>[
              Icon(
                Icons.keyboard_arrow_right,
                color: ConfigColor.primaryLight,
              ),
            ],
          ),
        ),
        AppListTitle(
          title: Translate.of(context).translate('warehouse_management'),
          leading: Icon(
            Icons.collections_bookmark_outlined,
            color: ConfigColor.primaryLight,
          ),
          onPressed: () {
            // onNavigate(ConfigRoutes.setting);
            AppBloc.pageViewCubit.onChangePage(WAREHOUSE_INDEX);
            if (!ConfigSize.isWeb) Navigator.pop(context);
          },
          trailing: Row(
            children: <Widget>[
              Icon(
                Icons.keyboard_arrow_right,
                color: ConfigColor.primaryLight,
              ),
            ],
          ),
        ),
        AppListTitle(
          title:
              Translate.of(context).translate('receipts_expenses_management'),
          leading: Icon(
            Icons.monetization_on_outlined,
            color: ConfigColor.primaryLight,
          ),
          onPressed: () {
            // onNavigate(ConfigRoutes.setting);
            AppBloc.pageViewCubit.onChangePage(RECEIPTS_EXPENSES_INDEX);
            if (!ConfigSize.isWeb) Navigator.pop(context);
          },
          trailing: Row(
            children: <Widget>[
              Icon(
                Icons.keyboard_arrow_right,
                color: ConfigColor.primaryLight,
              ),
            ],
          ),
        ),
        AppListTitle(
          title: Translate.of(context).translate('report'),
          leading: Icon(
            Icons.ssid_chart,
            color: ConfigColor.primaryLight,
          ),
          onPressed: () {
            // onNavigate(ConfigRoutes.setting);
            AppBloc.pageViewCubit.onChangePage(REPORT_INDEX);
            if (!ConfigSize.isWeb) Navigator.pop(context);
          },
          trailing: Row(
            children: <Widget>[
              Icon(
                Icons.keyboard_arrow_right,
                color: ConfigColor.primaryLight,
              ),
            ],
          ),
        ),
        AppListTitle(
          title: Translate.of(context).translate('staff'),
          leading: Icon(
            Icons.account_circle_outlined,
            color: ConfigColor.primaryLight,
          ),
          onPressed: () {
            // onNavigate(ConfigRoutes.setting);
            AppBloc.pageViewCubit.onChangePage(STAFF_INDEX);
            if (!ConfigSize.isWeb) Navigator.pop(context);
          },
          trailing: Row(
            children: <Widget>[
              Icon(
                Icons.keyboard_arrow_right,
                color: ConfigColor.primaryLight,
              ),
            ],
          ),
        ),
        AppListTitle(
          title: Translate.of(context).translate('setting'),
          leading: Icon(
            Icons.settings_outlined,
            color: ConfigColor.primaryLight,
          ),
          onPressed: () {
            // onNavigate(ConfigRoutes.setting);
            AppBloc.pageViewCubit.onChangePage(SETTING_INDEX);
            if (!ConfigSize.isWeb) Navigator.pop(context);
          },
          trailing: Row(
            children: <Widget>[
              Icon(
                Icons.keyboard_arrow_right,
                color: ConfigColor.primaryLight,
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
                color: ConfigColor.primaryLight,
              ),
            ],
          ),
        ));
  }
}
