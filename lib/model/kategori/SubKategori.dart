// To parse this JSON data, do
//
//     final subCategory = subCategoryFromJson(jsonString);

import 'dart:convert';

SubCategory subCategoryFromJson(String str) => SubCategory.fromJson(json.decode(str));

String subCategoryToJson(SubCategory data) => json.encode(data.toJson());

class SubCategory {
    SubCategory({
        this.status,
        this.subcategories,
    });

    String? status;
    List<Subcategory>? subcategories;

    factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        status: json["status"],
        subcategories: List<Subcategory>.from(json["subcategories"].map((x) => Subcategory.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "subcategories": List<dynamic>.from(subcategories!.map((x) => x.toJson())),
    };
}

class Subcategory {
    Subcategory({
        this.id,
        this.categoryId,
        this.name,
        this.category,
        this.mediaCount,
    });

    String? id;
    String? categoryId;
    String? name;
    String? category;
    String? mediaCount;

    factory Subcategory.fromJson(Map<String, dynamic> json) => Subcategory(
        id: json["id"],
        categoryId: json["category_id"],
        name: json["name"],
        category: json["category"],
        mediaCount: json["media_count"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "category_id": categoryId,
        "name": name,
        "category": category,
        "media_count": mediaCount,
    };
}
