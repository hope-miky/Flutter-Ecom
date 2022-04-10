import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/screens/cart/carts.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomePageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 7.w,
      ),
      padding: EdgeInsets.only(top: 5.h),
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 5.h,
              // ),
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
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: Badge(
                  badgeContent: Text(
                    "0",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.bell,
                      size: 14.sp,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      useSafeArea: true,
                      builder: (context) {
                        return Cart();
                      });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Badge(
                    badgeColor: maincolor,
                    badgeContent: Text(
                      "2",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.cartArrowDown,
                        color: Colors.grey[700],
                        size: 14.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
