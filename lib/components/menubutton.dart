import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MenuButton extends StatelessWidget {
  final sm = 3.w;
  final rad = 0.8.w;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.w,
      width: 7.w,
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
