import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/blocs/bloc.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common/configs/config.dart';
import 'common/widgets/widget.dart';
import 'screens/screen.dart';

class AppContainer extends StatefulWidget {
  const AppContainer({Key? key}) : super(key: key);

  @override
  _AppContainerState createState() {
    return _AppContainerState();
  }
}

class _AppContainerState extends State<AppContainer>
    with WidgetsBindingObserver {
  late StreamSubscription signSubscription;
  late StreamSubscription<RemoteMessage> onMessage;
  late StreamSubscription<RemoteMessage> onMessageOpenedApp;
  final PageController controller = PageController();

  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    ///Remote notification listen
    onMessage = FirebaseMessaging.onMessage.listen((message) {});

    ///Remote notification listen
    onMessageOpenedApp =
        FirebaseMessaging.onMessageOpenedApp.listen((message) {});

    ///AppState add observer
    WidgetsBinding.instance.addObserver(this);
  }

  List<PageViewItemWidget> pageView = [
    PageViewItemWidget(title: "dashboard", child: const DashBoardScreen()),
    PageViewItemWidget(title: 'sale', child: const SaleScreen()),
    PageViewItemWidget(title: 'vendor', child: const VendorScreen()),
    PageViewItemWidget(title: 'product', child: const ProductScreen()),
    PageViewItemWidget(
        title: 'warehouse_management', child: const WarehouseScreen()),
    PageViewItemWidget(
        title: 'receipts_expenses_management',
        child: const ReceiptsExpensesScreen()),
    PageViewItemWidget(title: 'report', child: const ReportScreen()),
    PageViewItemWidget(title: 'staff', child: const StaffScreen()),
    PageViewItemWidget(title: 'setting', child: const SettingScreen()),
  ];
  @override
  void dispose() {
    onMessage.cancel();
    onMessageOpenedApp.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  ///Handle AppState
  @override
  void didChangeAppLifecycleState(state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {}
  }

  ///On change tab bottom menu
  // void onItemTapped(index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConfigColor.primary,
        title: Text(
            Translate.of(context).translate(pageView[selectedIndex].title),
            style: ConfigText.headline5.copyWith(fontSize: 24.h)),
      ),
      drawer: !ConfigSize.isWeb ? const AppDrawerMenu() : null,
      body: BlocListener<PageViewCubit, int>(
        listener: (context, index) {
          controller.jumpToPage(index);
          setState(() {
            selectedIndex = index;
          });
        },
        child: Row(
          children: [
            if (ConfigSize.isWeb)
              Expanded(
                flex: 2,
                child: Container(
                    decoration: BoxDecoration(
                        color: ConfigColor.primary.withOpacity(0.8)),
                    child: const AppDrawerMenu()),
              ),
            Expanded(
              flex: 5,
              child: PageView(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                children: pageView.map((e) => e.child).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageViewItemWidget {
  final String title;
  final Widget child;
  PageViewItemWidget({required this.title, required this.child});
}
