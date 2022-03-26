import 'package:addisecom/constants/categories.dart';
import 'package:addisecom/constants/suppliers.dart';
import 'package:addisecom/models/category_model.dart';
import 'package:addisecom/models/product_model.dart';

var baseurl = "http://104.248.3.235:3000/";
var imageurl =
    "https://cdn.pixabay.com/photo/2017/02/16/13/42/box-2071537_1280.png";

var sampleProducts = [
  new Product(
      id: 1,
      price: 200,
      name: "somthing name",
      description: "description",
      stock: 200,
      images: [
        'https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761_1280.jpg'
      ],
      categoryId: 1,
      category: sampleCategories[0],
      supplier: suppliers[0],
      supplierId: 1),
  new Product(
      id: 2,
      price: 200,
      name: "somthing name",
      description: "description",
      stock: 200,
      images: [
        'https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_1280.jpg'
      ],
      categoryId: 1,
      category: sampleCategories[0],
      supplier: suppliers[1],
      supplierId: 2),
  new Product(
      id: 3,
      price: 200,
      name: "somthing name",
      description: "description",
      stock: 200,
      images: [
        'https://cdn.pixabay.com/photo/2016/11/29/03/53/house-1867187_1280.jpg'
      ],
      categoryId: 1,
      category: sampleCategories[0],
      supplier: suppliers[2],
      supplierId: 3),
  new Product(
      id: 4,
      price: 200,
      name: "somthing name",
      description: "description",
      stock: 200,
      images: [
        'https://cdn.pixabay.com/photo/2015/02/05/08/12/stock-624712_1280.jpg'
      ],
      categoryId: 1,
      category: sampleCategories[0],
      supplier: suppliers[3],
      supplierId: 4),
];
