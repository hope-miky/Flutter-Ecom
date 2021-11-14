import 'package:addisecom/constants/colors.dart';
import 'package:addisecom/controllers/product_controller.dart';
import 'package:addisecom/screens/products/product_card.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProductsInCategory extends StatefulWidget {
  final int categoryId;
  final String title;
  const ProductsInCategory({required this.categoryId, required this.title});

  @override
  State<ProductsInCategory> createState() => _ProductsInCategoryState();
}

class _ProductsInCategoryState extends State<ProductsInCategory> {
  final ProductController pc = Get.put(ProductController());

  Future initProducts() async {
    await pc.productsInCategory(widget.categoryId);
  }

  @override
  void initState() {
    initProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.chevron_left_rounded,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.language,
            color: maincolor,
          ),
          SizedBox(
            width: 3.w,
          ),
          Center(
            child: Badge(
              badgeContent: Text(
                '',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Icon(
                Icons.notifications_none_outlined,
                color: maincolor,
              ),
            ),
          ),
          SizedBox(
            width: 7.w,
          )
        ],
      ),
      body: SizedBox.expand(
        child: Obx(
          () => Container(
            height: 69.8.h,
            child: new StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: pc.productincategory.length,
              itemBuilder: (BuildContext context, int index) =>
                  ProductCard(pc.productincategory[index]),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, 3.2),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ),
        ),
      ),
    );
  }
}
