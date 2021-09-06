import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MenuButton extends StatelessWidget {
  final sm = 3.5.w;
  final rad = 1.w;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.w,
      width: 8.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: sm,
                width: sm,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(rad)),
              ),
              Container(
                height: sm,
                width: sm,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(rad)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: sm,
                width: sm,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(rad)),
              ),
              Container(
                height: sm,
                width: sm,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(rad)),
              )
            ],
          )
        ],
      ),
    );
  }
}
