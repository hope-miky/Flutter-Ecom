import 'dart:convert';

class Supplier {
  Supplier({
    required this.id,
    required this.code,
    required this.fname,
    required this.lname,
    required this.email,
    required this.url,
    required this.country,
    required this.city,
    required this.logo,
    required this.address1,
    required this.address2,
    required this.phonenum,
    this.createdAt,
    this.updatedAt,
  });

  final int id;
  final String code;
  final String fname;
  final String lname;
  final String email;
  final dynamic url;
  final String country;
  final String city;
  final dynamic logo;
  final dynamic address1;
  final dynamic address2;
  final String phonenum;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory Supplier.fromJson(String str) => Supplier.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Supplier.fromMap(Map<String, dynamic> json) => Supplier(
        id: json["id"],
        code: json["code"],
        fname: json["fname"],
        lname: json["lname"],
        email: json["email"],
        url: json["url"],
        country: json["country"],
        city: json["city"],
        logo: json["logo"],
        address1: json["address1"],
        address2: json["address2"],
        phonenum: json["phonenum"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "code": code,
        "fname": fname,
        "lname": lname,
        "email": email,
        "url": url,
        "country": country,
        "city": city,
        "logo": logo,
        "address1": address1,
        "address2": address2,
        "phonenum": phonenum,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
      };
}
