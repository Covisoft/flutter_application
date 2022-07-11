import 'package:flutter/material.dart';
import 'package:flutter_app/screens/screen.dart';

class UtilRoutes {
  static final _instance = UtilRoutes._internal();

  factory UtilRoutes() {
    return _instance;
  }

  UtilRoutes._internal();

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SignIn.id:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const SignIn(),
        );

      default:
        return _errorRoute();
    }
  }

  Route _errorRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      ),
      settings: const RouteSettings(
        name: '/error',
      ),
    );
  }
}
