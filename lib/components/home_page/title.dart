import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomePageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.w, vertical: 1.h),
      width: 100.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Best deals",
            style: GoogleFonts.poppins(
              fontSize: 15.sp,
            ),
          ),
          Text(
            "Great products",
            style: GoogleFonts.poppins(
              fontSize: 15.sp,
              // fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
