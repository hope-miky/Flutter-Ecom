import 'package:addisecom/models/product_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var products_in_cart = [].obs;
  var product_ids_in_cart = [].obs;
  var totalCost = 0.0.obs;

  get cart_elements => product_ids_in_cart.length;

  getCartValue(index) {
    return products_in_cart[index].cart.toString();
  }

  clearCart() {
    products_in_cart.value = [];
    product_ids_in_cart.value = [];
    totalCost.value = 0;
  }

  addProductInCart(Product product) {
    products_in_cart.add(product);
    product_ids_in_cart.add(product.id);
    this.calculateCost();
  }

  alterCartValue(index, value) {
    products_in_cart[index].cart += value;
    products_in_cart[index] = products_in_cart[index];
  }

  removeProductFromCart(productid) {
    products_in_cart.removeWhere((product) => product.id == productid);
    product_ids_in_cart.removeWhere((id) => id == productid);
    this.calculateCost();
  }

  calculateCost() {
    var total = 0.0;
    for (Product product in products_in_cart) {
      total += (product.price * product.cart);
    }
    print(total);
    totalCost.value = total;
  }
}
