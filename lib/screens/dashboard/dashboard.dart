import 'package:flutter/material.dart';
import 'package:flutter_app/common/utils/utils.dart';
import 'package:flutter_app/common/widgets/widget.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() {
    return _DashBoardState();
  }
}

class _DashBoardState extends State<DashBoard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawerMenu(),
      appBar: AppBar(
        title: Text(
          Translate.of(context).translate('dashboard'),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          Translate.of(context).translate('dashboard'),
        ),
      ),
    );
  }
}
