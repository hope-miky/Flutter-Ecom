import 'package:addisecom/constants/sidebarcontents.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SideBarWeb extends StatefulWidget {
  SideBarWeb({
    Key? key,
  }) : super(key: key);

  @override
  _SideBarWebState createState() => _SideBarWebState();
}

class _SideBarWebState extends State<SideBarWeb> {
  bool dense = false;
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      curve: Curves.easeIn,
      width: dense ? screen.width * 0.035 : screen.width * 0.2,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                dense = !dense;
              });
            },
            icon: Icon(
              Icons.card_giftcard_rounded,
              size: 10.sp,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: sidebarcontents.map((e) {
              return ListTile(
                leading: e["icon"] as Icon,
                title: !dense
                    ? Text(
                        e["name"].toString(),
                        overflow: TextOverflow.ellipsis,
                      )
                    : null,
                onTap: () {},
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
