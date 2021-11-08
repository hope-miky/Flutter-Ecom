import 'dart:convert';

import 'package:addisecom/models/category_model.dart';
import 'package:addisecom/models/product_model.dart';
import 'package:addisecom/services/api_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var count = 0.obs;
  var products = [].obs;
  var newproducts = [].obs;
  var filter = {}.obs;

  final ApiService api = ApiService();

  Future fetchProducts() async {
    var response = await api.dio.get('products');
    if (response.statusCode == 200) {
      var data = [];
      for (var product in response.data) {
        data.add(Product.fromMap(product));
      }
      products.value = data;
    } else {}
  }

  Future fetchNewProducts() async {
    var response = await api.dio.get('products/new');
    if (response.statusCode == 200) {
      var data = [];
      for (var product in response.data) {
        data.add(Product.fromMap(product));
      }
      newproducts.value = data;
    } else {}
  }

  Future filterByCategory(Category category) async {
    if (category.name == 'All') {
      filter.remove('CategoryId');
      await fetchProducts();
    } else {
      //
      filter['CategoryId'] = category.id;
      var response = await api.dio.get(
        'products',
        queryParameters: {
          'filters': json.encode(filter),
        },
      );

      //
      if (response.statusCode == 200) {
        var data = [];
        for (var product in response.data) {
          data.add(Product.fromMap(product));
        }
        products.assignAll(data);
      }
    }
  }
}
