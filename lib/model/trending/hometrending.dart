// To parse this JSON data, do
//
//     final hometrendingRespon = hometrendingResponFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

HometrendingRespon hometrendingResponFromJson(String str) =>
    HometrendingRespon.fromJson(json.decode(str));

String hometrendingResponToJson(HometrendingRespon data) =>
    json.encode(data.toJson());

class HometrendingRespon {
  HometrendingRespon({
    @required this.status,
    @required this.isLastPage,
    @required this.media,
  });

  String? status;
  bool? isLastPage;
  List<Media>? media;

  factory HometrendingRespon.fromJson(Map<String, dynamic> json) =>
      HometrendingRespon(
        status: json["status"],
        isLastPage: json["isLastPage"],
        media: List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "isLastPage": isLastPage,
        "media": List<dynamic>.from(media!.map((x) => x.toJson())),
      };
}

class Media {
  Media({
    @required this.id,
    @required this.category,
    @required this.subCategory,
    @required this.userId,
    @required this.title,
    @required this.description,
    @required this.coverPhoto,
    @required this.source,
    @required this.duration,
    @required this.canPreview,
    @required this.previewDuration,
    @required this.canDownload,
    @required this.isFree,
    @required this.type,
    @required this.videoType,
    @required this.likesCount,
    @required this.viewsCount,
    @required this.dateInserted,
    @required this.categoryId,
    @required this.stream,
    @required this.download,
    @required this.commentsCount,
    @required this.userLiked,
  });

  String? id;
  String? category;
  String? subCategory;
  String? userId;
  String? title;
  String? description;
  String? coverPhoto;
  String? source;
  String? duration;
  String? canPreview;
  String? previewDuration;
  String? canDownload;
  String? isFree;
  String? type;
  String? videoType;
  String? likesCount;
  String? viewsCount;
  DateTime? dateInserted;
  String? categoryId;
  String? stream;
  String? download;
  String? commentsCount;
  bool? userLiked;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        id: json["id"],
        category: json["category"],
        subCategory: json["sub_category"],
        userId: json["user_id"],
        title: json["title"],
        description: json["description"],
        coverPhoto: json["cover_photo"],
        source: json["source"],
        duration: json["duration"],
        canPreview: json["can_preview"],
        previewDuration: json["preview_duration"],
        canDownload: json["can_download"],
        isFree: json["is_free"],
        type: json["type"],
        videoType: json["video_type"],
        likesCount: json["likes_count"],
        viewsCount: json["views_count"],
        dateInserted: DateTime.parse(json["dateInserted"]),
        categoryId: json["category_id"],
        stream: json["stream"],
        download: json["download"],
        commentsCount: json["comments_count"],
        userLiked: json["user_liked"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category": category,
        "sub_category": subCategory,
        "user_id": userId,
        "title": title,
        "description": description,
        "cover_photo": coverPhoto,
        "source": source,
        "duration": duration,
        "can_preview": canPreview,
        "preview_duration": previewDuration,
        "can_download": canDownload,
        "is_free": isFree,
        "type": type,
        "video_type": videoType,
        "likes_count": likesCount,
        "views_count": viewsCount,
        "dateInserted": dateInserted!.toIso8601String(),
        "category_id": categoryId,
        "stream": stream,
        "download": download,
        "comments_count": commentsCount,
        "user_liked": userLiked,
      };
}
