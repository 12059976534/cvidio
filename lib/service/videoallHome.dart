import 'dart:convert';
import 'package:caivideo/model/allvideo/Homeallvideo.dart';
import 'package:http/http.dart' as http;

class HomeallvideoService {
<<<<<<< HEAD
  static Future<List<LatestVideo>> getListUser() async {
=======
  static Future<List<LatestVideo>> getListUser({String? id}) async {
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
    List<LatestVideo> listVideo = [];
    final response = await http.get(Uri.parse("https://uvid.site/discover"));
    try {
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        HomeallvideoRespon responUser = HomeallvideoRespon.fromJson(json);
        responUser.latesvideo!.forEach((item) {
          listVideo.add(item);
        });
<<<<<<< HEAD
=======
        if (id != null) {
          return listVideo.where((i) => i.categoryId == id).toList();
        }
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
        return listVideo;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
