import 'package:addisecom/screens/web/sidebard.web.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainDashboardWeb extends StatefulWidget {
  MainDashboardWeb({Key? key}) : super(key: key);

  @override
  _MainDashboardWebState createState() => _MainDashboardWebState();
}

class _MainDashboardWebState extends State<MainDashboardWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Row(
          children: [
            SideBarWeb(
              ctx: context,
            ),
            Expanded(child: AutoRouter())
          ],
        ),
      ),
    );
  }
}
