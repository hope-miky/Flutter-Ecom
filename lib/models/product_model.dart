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
  final double price;
  final String name;
  final double stock;
  final int? categoryId;
  final Category? category;

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        price: double.parse(json["price"].toString()),
        name: json["name"],
        stock: double.parse(json["stock"].toString()),
        categoryId: json["CategoryId"],
        category: json["Category"] == null
            ? null
            : Category.fromMap(json["Category"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "price": price,
        "name": name,
        "stock": stock,
        "CategoryId": categoryId,
        "Category": category == null ? null : category!.toMap(),
      };
}
