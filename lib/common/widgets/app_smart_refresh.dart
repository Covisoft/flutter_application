import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AppSmartRefresh extends StatefulWidget {
  const AppSmartRefresh({Key? key, required this.child, this.onRefresh, this.onLoading}) : super(key: key);
  final Widget child;
  final Function()? onRefresh;
  final Function()? onLoading;

  @override
  State<AppSmartRefresh> createState() => _AppSmartRefreshState();
}

class _AppSmartRefreshState extends State<AppSmartRefresh> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  void _onRefresh() async {
    if (widget.onRefresh != null) {
      widget.onRefresh!();
    }

    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    if (widget.onLoading != null) {
      widget.onLoading!();
    }

    if (mounted) {
      setState(() {});
    }
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.key,
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: const WaterDropHeader(),
        footer: CustomFooter(
          builder: (context, mode) {
            Widget body;
            if (mode == LoadStatus.idle) {
              body = const Text("pull up load");
            } else if (mode == LoadStatus.loading) {
              body = const CupertinoActivityIndicator();
            } else if (mode == LoadStatus.failed) {
              body = const Text("Load Failed!Click retry!");
            } else if (mode == LoadStatus.canLoading) {
              body = const Text("release to load more");
            } else {
              body = const Text("No more Data");
            }
            return SizedBox(
              height: 55.0,
              child: Center(child: body),
            );
          },
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: widget.child,
      ),
    );
  }
}
