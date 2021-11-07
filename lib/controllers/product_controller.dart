import 'package:addisecom/models/product_model.dart';
import 'package:addisecom/services/api_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var count = 0.obs;
  var products = [].obs;
  var newproducts = [].obs;
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
}
