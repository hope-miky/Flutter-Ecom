import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: EdgeInsets.symmetric(horizontal: 7.w, vertical: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70.w,
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.teal[50],
                filled: true,
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Container(
            width: 12.w,
            height: 12.w,
            decoration: BoxDecoration(
                color: Colors.teal[50],
                borderRadius: BorderRadius.circular(2.w)),
            child: Center(
                child: Icon(
              Icons.category,
              color: Colors.teal[200],
            )),
          )
        ],
      ),
    );
  }
}
