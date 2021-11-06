import 'package:addisecom/constants/products.dart';
import 'package:addisecom/controllers/product_controller.dart';
import 'package:addisecom/screens/products/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:sizer/sizer.dart';

class ProductsPage extends StatelessWidget {
  final ProductController product_controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 35.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: productlist.map((e) => ProductCard(e)).toList(),
        ),
      ),
    );
  }
}
