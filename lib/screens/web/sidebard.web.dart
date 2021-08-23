import 'package:addisecom/constants/sidebarcontents.dart';
import 'package:flutter/material.dart';

class SideBarWeb extends StatefulWidget {
  final bool dense;
  SideBarWeb({Key? key, this.dense = false}) : super(key: key);

  @override
  _SideBarWebState createState() => _SideBarWebState();
}

class _SideBarWebState extends State<SideBarWeb> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      curve: Curves.easeIn,
      width: widget.dense ? screen.width * 0.035 : screen.width * 0.2,
      child: Column(
        children: sidebarcontents.map((e) {
          return ListTile(
            leading: e["icon"] as Icon,
            title: !widget.dense
                ? Text(
                    e["name"].toString(),
                    overflow: TextOverflow.ellipsis,
                  )
                : null,
            onTap: () {},
          );
        }).toList(),
      ),
    );
  }
}
