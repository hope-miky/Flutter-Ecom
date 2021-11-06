import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/constants/products.dart';
import 'package:addisecom/screens/cart/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.w),
            ),
            child: Material(
              borderRadius: BorderRadius.circular(5.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 2.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cart",
                                style: GoogleFonts.poppins(
                                  fontSize: 17.sp,
                                ),
                              ),
                              Container(
                                height: 3,
                                width: 5.w,
                                margin: EdgeInsets.only(left: 4),
                                color: Color(0xFF65D1D8),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    // ...productlist.skip(4).map((e) => CartCard(
                    //       product: e,
                    //     )),
                    Divider(),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 7.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Cost:     +\$3420",
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                            ),
                          ),
                          Text(
                            "Tax:     +\$254",
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                            ),
                          ),
                          Text(
                            "Delivery:     +\$25",
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                            ),
                          ),
                          Text(
                            "Discount:     -\$0",
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                            ),
                          ),
                          Divider(),
                          Text(
                            "Total:     +\$3420",
                            style: GoogleFonts.poppins(
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
                      width: 100.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: maincolor,
                        ),
                        child: Text(
                          "Proceed",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 9.h - 2.5.w,
            left: 90.w - 2.5.w,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              splashColor: Colors.transparent,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 5.w,
                child: Center(
                  child: Icon(
                    Icons.clear,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
