import 'package:addisecom/models/category_model.dart';
import 'dart:convert';

import 'package:addisecom/models/supplier_model.dart';

class Product {
  Product(
      {required this.id,
      required this.price,
      required this.name,
      required this.description,
      required this.stock,
      required this.cart,
      required this.images,
      required this.categoryId,
      required this.category,
      required this.supplier,
      required this.supplierId});

  final int id;
  final double price;
  final String name;
  final String? description;
  final double stock;
  final List<String> images;
  int cart;
  final int? categoryId;
  final int? supplierId;
  final Supplier? supplier;
  final Category? category;

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> jsondata) => Product(
        id: jsondata["id"],
        price: double.parse(jsondata["price"].toString()),
        name: jsondata["name"],
        cart: 0,
        description: jsondata["description"],
        images: jsondata['images'] == ""
            ? []
            : jsondata['images'].toString().split(';'),
        stock: double.parse(jsondata["stock"].toString()),
        categoryId: jsondata["CategoryId"],
        category: jsondata["Category"] == null
            ? null
            : Category.fromMap(jsondata["Category"]),
        supplierId: jsondata["SupplierId"],
        supplier: jsondata["Supplier"] == null
            ? null
            : Supplier.fromMap(jsondata["Supplier"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "price": price,
        "name": name,
        "stock": stock,
        "CategoryId": categoryId,
        "Category": category == null ? null : category!.toMap(),
        "SupplierId": supplierId,
        "Supplier": supplier == null ? null : supplier!.toMap(),
      };
}
