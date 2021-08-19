import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainDashboard extends StatefulWidget {
  MainDashboard({Key? key}) : super(key: key);

  @override
  _MainDashboardState createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: null,
      child: Scaffold(
        body: SafeArea(
          child: SizedBox.expand(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 5.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [CustomMenuButton()],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomMenuButton extends StatefulWidget {
  CustomMenuButton({Key? key}) : super(key: key);

  @override
  _CustomMenuButtonState createState() => _CustomMenuButtonState();
}

class _CustomMenuButtonState extends State<CustomMenuButton> {
  var _decoration = BoxDecoration(
      border: Border.all(
        color: Colors.blueGrey,
      ),
      borderRadius: BorderRadius.circular(2.sp));
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.sp,
      height: 40.sp,
      child: Column(children: [
        Row(
          children: [
            Container(
              decoration: _decoration,
              width: 10.sp,
              height: 10.sp,
              margin:
                  EdgeInsets.symmetric(horizontal: 1.5.sp, vertical: 1.5.sp),
            ),
            Container(
              decoration: _decoration,
              width: 10.sp,
              height: 10.sp,
              margin:
                  EdgeInsets.symmetric(horizontal: 1.5.sp, vertical: 1.5.sp),
            )
          ],
        ),
        Row(
          children: [
            Container(
              decoration: _decoration,
              width: 10.sp,
              height: 10.sp,
              margin:
                  EdgeInsets.symmetric(horizontal: 1.5.sp, vertical: 1.5.sp),
            ),
            Container(
              decoration: _decoration,
              width: 10.sp,
              height: 10.sp,
              margin:
                  EdgeInsets.symmetric(horizontal: 1.5.sp, vertical: 1.5.sp),
            )
          ],
        ),
      ]),
    );
  }
}
