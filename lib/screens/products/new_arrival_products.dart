import 'package:addisecom/constants/products.dart';
import 'package:addisecom/controllers/product_controller.dart';
import 'package:addisecom/screens/products/product_card_small.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sizer/sizer.dart';

class NewArrivalProductsListPage extends StatelessWidget {
  NewArrivalProductsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: sampleProducts.reversed
              .map((e) => ProductCardSmall(
                    product: e,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
