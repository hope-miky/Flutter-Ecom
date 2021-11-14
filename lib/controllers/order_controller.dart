import 'dart:convert';

import 'package:addisecom/controllers/cart_controller.dart';
import 'package:addisecom/controllers/product_controller.dart';
import 'package:addisecom/models/product_model.dart';
import 'package:addisecom/screens/home.dart';
import 'package:addisecom/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OrderController extends GetxController {
  var prd = Get.find<CartController>().products_in_cart;
  final ApiService api = ApiService();

  Future placeAnOrder(
      {fullname, phonenum, city, address, email, total_cost}) async {
    var products = [];

    for (Product product in prd)
      products.add({'id': product.id, 'quantity': product.cart});

    var order = {
      'products': json.encode(products),
      'customer_name': fullname,
      'customer_phonenum': phonenum,
      'customer_address': address,
      'customer_city': city,
      'total_cost': total_cost
    };

    var response = await api.dio.post('orders', data: order);
    if (response.statusCode == 200) {
      print(response.toString());
      Get.snackbar("Success", "Successfully placed your order",
          backgroundColor: Colors.green);
      Get.find<CartController>().clearCart();
      Get.to(() => HomePage());
    } else {
      Get.snackbar("Error placing an order", "Please try again",
          backgroundColor: Colors.red);
    }
  }
}
