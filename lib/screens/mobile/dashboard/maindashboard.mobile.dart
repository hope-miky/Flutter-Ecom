import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainDashboardMobile extends StatefulWidget {
  MainDashboardMobile({Key? key}) : super(key: key);

  @override
  _MainDashboardMobileState createState() => _MainDashboardMobileState();
}

class _MainDashboardMobileState extends State<MainDashboardMobile> {
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
  /// Will used to access the Animated list
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  /// This holds the items
  List<int> _items = [];

  /// This holds the item count
  int counter = 0;

  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (t.tick < 5) {
        listKey.currentState!
            .insertItem(0, duration: const Duration(milliseconds: 500));
        _items = []
          ..add(counter++)
          ..addAll(_items);
      } else {
        t.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.sp,
      height: 40.sp,
      child: AnimatedList(
        key: listKey,
        initialItemCount: _items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index, animation) {
          return slideIt(context, index, animation); // Refer step 3
        },
      ),
    );
  }

  Widget slideIt(BuildContext context, int index, animation) {
    int item = _items[index];
    TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset(0, 0),
      ).animate(animation),
      child: Container(
        width: 10.sp,
        height: 10.sp,
        margin: EdgeInsets.symmetric(horizontal: 1.5.sp, vertical: 1.5.sp),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueGrey,
            ),
            borderRadius: BorderRadius.circular(2.sp)),
      ),
    );
  }
}
