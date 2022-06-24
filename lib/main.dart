import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app.dart';

import 'common/configs/config.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  runApp(DevicePreview(
      enabled: ConfigApplication.devicePreview,
      builder: (context) {
        return const App();
      }));
}
