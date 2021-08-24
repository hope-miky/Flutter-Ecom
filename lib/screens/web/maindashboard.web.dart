import 'package:addisecom/routes/routes.dart';
import 'package:addisecom/screens/web/sidebard.web.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainDashboardWeb extends StatefulWidget {
  final String? baseroute;
  MainDashboardWeb({Key? key, this.baseroute}) : super(key: key);

  @override
  _MainDashboardWebState createState() => _MainDashboardWebState();
}

class _MainDashboardWebState extends State<MainDashboardWeb> {
  var router = Routes();
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  void _onItems(String route) {
    _navigatorKey.currentState!.pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Row(
          children: [
            SideBarWeb(
              onpressed: _onItems,
            ),
            Expanded(
              child: Navigator(
                key: _navigatorKey,
                onGenerateRoute: router.onDashboardGeneratedroute,
                initialRoute: widget.baseroute,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
