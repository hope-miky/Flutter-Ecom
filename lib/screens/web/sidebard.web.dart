import 'package:addisecom/constants/sidebarcontents.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SideBarWeb extends StatefulWidget {
  BuildContext? ctx;
  SideBarWeb({Key? key, this.ctx}) : super(key: key);

  @override
  _SideBarWebState createState() => _SideBarWebState();
}

class _SideBarWebState extends State<SideBarWeb> {
  bool dense = true;
  final _innerRouterKey = GlobalKey<AutoRouterState>();

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
                onTap: () {
                  AutoRouter.of(context).pushNamed(e["route"] as String);
                  // AutoRouter.innerRouterOf(widget.ctx!, e["route"] as String);
                  final router = _innerRouterKey.currentState?.controller;
                  // router?.push(const UsersRoute());
                  // router.innerRouterOf(routeName)
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
