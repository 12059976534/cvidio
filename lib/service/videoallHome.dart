import 'dart:convert';
import 'package:caivideo/model/allvideo/Homeallvideo.dart';
import 'package:http/http.dart' as http;

class HomeallvideoService {
  static Future<List<LatestVideo>> getListUser({String? id}) async {
    List<LatestVideo> listVideo = [];
    final response = await http.get(Uri.parse("https://uvid.site/discover"));
    try {
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        HomeallvideoRespon responUser = HomeallvideoRespon.fromJson(json);
        responUser.latesvideo!.forEach((item) {
          listVideo.add(item);
        });
        if (id != null) {
          return listVideo.where((i) => i.categoryId == id).toList();
        }
        return listVideo;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
