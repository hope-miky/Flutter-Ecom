import 'package:addisecom/components/home_page/search_bar.dart';
import 'package:addisecom/components/home_page/title.dart';
import 'package:addisecom/components/menubutton.dart';
import 'package:addisecom/constants/products.dart';
import 'package:addisecom/screens/products/products.page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuButton(),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 6.w,
                    )
                  ],
                ),
              ),
              HomePageTitle(),
              HomeSearchBar(),
              ViewAllText(),
              ProductsPage()
            ],
          ),
        ),
      ),
    );
  }
}

class ViewAllText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Popular Products",
            style: GoogleFonts.poppins(
              fontSize: 11.sp,
            ),
          ),
          Text(
            "View All ->",
            style: GoogleFonts.poppins(
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }
}
