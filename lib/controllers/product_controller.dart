import 'package:addisecom/models/product_model.dart';
import 'package:addisecom/services/api_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var count = 0.obs;
  var products = [].obs;
  final ApiService api = ApiService();

  Future fetchProducts() async {
    var response = await api.dio.get('products');
    print(response.statusCode == 200);
    if (response.statusCode == 200) {
      var data = [];
      print(response);
      for (var product in response.data) {
        data.add(Product.fromMap(product));
      }
      products.value = data;
      print(products);
    } else {}
  }
}
