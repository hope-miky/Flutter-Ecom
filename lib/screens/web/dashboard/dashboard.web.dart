import 'package:flutter/material.dart';

class DashboardWeb extends StatefulWidget {
  DashboardWeb({Key? key}) : super(key: key);

  @override
  _DashboardWebState createState() => _DashboardWebState();
}

class _DashboardWebState extends State<DashboardWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Dashboard")),
    );
  }
}
