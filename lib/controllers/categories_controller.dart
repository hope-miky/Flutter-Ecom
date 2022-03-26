import 'package:addisecom/models/category_model.dart';
import 'package:addisecom/services/api_service.dart';
import 'package:get/get.dart';

class CategoriesController extends GetxController {
  var categories = [].obs;
  final ApiService api = ApiService();

  Future clearFilter() async {
    for (Category category in categories) {
      category.setfilterd(false);
    }
  }

  Future fetchCategories() async {
    categories.value = categories;
    // var response = await api.dio.get('category');
    // if (response.statusCode == 200) {
    //   var data = [];
    //   for (var category in response.data) {
    //     data.add(Category.fromMap(category));
    //   }
    //   data.insert(
    //     0,
    //     new Category(
    //       id: 0,
    //       name: "All",
    //       active: true,
    //       description: "description",
    //       createdAt: DateTime.now(),
    //       updatedAt: DateTime.now(),
    //     ),
    //   );
    //   categories.value = data;
    // } else {}
  }
}
