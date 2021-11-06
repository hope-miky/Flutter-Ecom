import 'dart:convert';

class Category {
  Category({
    required this.id,
    required this.name,
    required this.active,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String name;
  final bool active;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        active: json["active"],
        description: json["description"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "active": active,
        "description": description,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
