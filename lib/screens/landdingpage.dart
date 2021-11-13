import 'package:addisecom/components/home_page/search_bar.dart';
import 'package:addisecom/components/home_page/title.dart';
import 'package:addisecom/components/menubutton.dart';
import 'package:addisecom/controllers/product_controller.dart';
import 'package:addisecom/screens/categories/categories.web.dart';
import 'package:addisecom/screens/home.dart';
import 'package:addisecom/screens/products/new_arrival_products.dart';
import 'package:addisecom/screens/products/products.page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class LanddingPage extends StatefulWidget {
  const LanddingPage({Key? key}) : super(key: key);

  @override
  State<LanddingPage> createState() => _LanddingPageState();
}

class _LanddingPageState extends State<LanddingPage> {
  final ProductController pc = Get.put(ProductController());
  fetchProducts() async {
    await pc.fetchProducts();
    await pc.fetchNewProducts();
  }

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       MenuButton(),
          //       CircleAvatar(
          //         backgroundColor: Colors.red,
          //         radius: 6.w,
          //       )
          //     ],
          //   ),
          // ),

          // SizedBox(
          //   height: 7.h,
          // ),
          HomePageTitle(),
          // HomeSearchBar(),
          // CategoryAvatars(),

          ViewAllText(),
          ProductsPage(),
          CategoryAvatars(),
          NewArivalText(),
          NewArrivalProductsListPage()
        ],
      ),
    );
  }
}
