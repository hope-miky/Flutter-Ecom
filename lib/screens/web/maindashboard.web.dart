import 'package:addisecom/screens/web/sidebard.web.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainDashboardWeb extends StatefulWidget {
  MainDashboardWeb({Key? key}) : super(key: key);

  @override
  _MainDashboardWebState createState() => _MainDashboardWebState();
}

class _MainDashboardWebState extends State<MainDashboardWeb> {
  bool dense = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            setState(() {
              dense = !dense;
            });
          },
        ),
        title: Text("AddisInventory Management system"),
      ),
      body: SizedBox.expand(
        child: Row(
          children: [
            SideBarWeb(
              dense: dense,
            ),
            Expanded(child: Container(color: Colors.green))
          ],
        ),
      ),
    );
  }
}
