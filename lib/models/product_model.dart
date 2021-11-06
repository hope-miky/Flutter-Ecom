import 'package:addisecom/models/category_model.dart';
import 'dart:convert';

class Product {
  Product({
    required this.id,
    required this.price,
    required this.name,
    required this.stock,
    required this.categoryId,
    required this.category,
  });

  final int id;
  final int price;
  final String name;
  final int stock;
  final int categoryId;
  final Category category;

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        price: json["price"],
        name: json["name"],
        stock: json["stock"],
        categoryId: json["CategoryId"],
        category: Category.fromMap(json["Category"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "price": price,
        "name": name,
        "stock": stock,
        "CategoryId": categoryId,
        "Category": category.toMap(),
      };
}
