// To parse this JSON data, do
//
//     final HomekategoriRespon = HomekategoriResponFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

HomekategoriRespon homekategoriResponFromJson(String str) =>
    HomekategoriRespon.fromJson(json.decode(str));

String homekategoriResponToJson(HomekategoriRespon data) =>
    json.encode(data.toJson());

class HomekategoriRespon {
  HomekategoriRespon({
    @required this.status,
    @required this.categories,
  });

  String? status;
  List<Kategori>? categories;

  factory HomekategoriRespon.fromJson(Map<String, dynamic> json) =>
      HomekategoriRespon(
        status: json["status"],
        categories: List<Kategori>.from(
            json["categories"].map((x) => Kategori.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "categories": List<dynamic>.from(categories!.map((x) => x.toJson())),
      };
}

class Kategori {
  Kategori({
    @required this.id,
    @required this.name,
    @required this.thumbnail,
    @required this.media_count,
  });

  String? id;
  String? name;
  String? thumbnail;
  String? media_count;

  factory Kategori.fromJson(Map<String, dynamic> json) => Kategori(
        id: json["id"],
        name: json["name"],
        thumbnail: json["thumbnail"],
        media_count: json["media_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "thumbnail": thumbnail,
        "media_count": media_count,
      };
}
