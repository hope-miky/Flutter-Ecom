import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/constants/products.dart';
import 'package:addisecom/screens/cart_card.dart';
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

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Material(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
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
              ...productlist.skip(4).map((e) => CartCard(
                    product: e,
                  )),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 7.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cost:     +\$3420",
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      "Tax:     +\$254",
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
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
                        fontSize: 9.sp,
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
                margin: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
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
