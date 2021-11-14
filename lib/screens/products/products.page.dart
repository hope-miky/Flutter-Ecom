import 'package:addisecom/controllers/product_controller.dart';
import 'package:addisecom/screens/products/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sizer/sizer.dart';

class ProductsPage extends StatelessWidget {
  final ProductController pc = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 30.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Obx(() => Row(
              children: pc.products.map((e) => ProductCard(e)).toList(),
            )),
      ),
    );
  }
}
