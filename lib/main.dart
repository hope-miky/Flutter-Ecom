import 'package:addisecom/routes/route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRoute = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp.router(
        routeInformationParser: _appRoute.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        routerDelegate: AutoRouterDelegate(_appRoute),
      );
    });
  }
}
