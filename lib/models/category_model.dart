import 'dart:convert';

class Category {
  Category({
    required this.id,
    required this.name,
    required this.active,
    required this.description,
    required this.images,
    this.createdAt,
    this.updatedAt,
    this.filtered = false,
  });

  final int id;
  final String name;
  final bool active;
  final String description;
  final String images;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  bool filtered;

  setfilterd(bool val) {
    this.filtered = val;
  }

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        active: json["active"],
        images: json["images"],
        description: json["description"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        filtered: false,
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "active": active,
        "images": images,
        "description": description,
        "createdAt": createdAt ?? createdAt!.toIso8601String(),
        "updatedAt": updatedAt ?? updatedAt!.toIso8601String(),
      };
}
