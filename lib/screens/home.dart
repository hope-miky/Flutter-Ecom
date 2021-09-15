import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/constants/products.dart';
import 'package:addisecom/screens/cart/carts.dart';
import 'package:addisecom/screens/cart/cart_card.dart';
import 'package:addisecom/screens/histories/order_histories_page.dart';
import 'package:addisecom/screens/landdingpage.dart';
import 'package:addisecom/screens/products/all_products_page.dart';
import 'package:addisecom/screens/profile/user_profile_page.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;
  List<Widget> _pages = [
    LanddingPage(),
    AllProductsPage(),
    OrderHistoriesPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_bottomNavIndex],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[400],
        onPressed: () {
          showDialog(
              context: context,
              barrierDismissible: false,
              useSafeArea: true,
              builder: (context) {
                return Cart();
              });
        },
        child: Icon(
          FontAwesomeIcons.cartArrowDown,
          size: 15.sp,
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [Icons.home, Icons.store, Icons.history, Icons.account_box],
        activeColor: Colors.teal,
        inactiveColor: Colors.grey,
        splashColor: Colors.teal,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
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
            "View All",
            style: GoogleFonts.poppins(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class NewArivalText extends StatelessWidget {
  const NewArivalText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
      width: 100.w,
      child: Text(
        "New Arrival",
        style: GoogleFonts.poppins(
          fontSize: 11.sp,
        ),
      ),
    );
  }
}
