import 'dart:convert';
import 'package:caivideo/model/trending/hometrending.dart';
import 'package:http/http.dart' as http;

class TrendingService {
  static Future<List<Media>> getListUser() async {
    List<Media> listTrending = [];
    final response =
        await http.get(Uri.parse("https://uvid.site/getTrendingMedia"));
    try {
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        HometrendingRespon responUser = HometrendingRespon.fromJson(json);
        responUser.media!.forEach((item) {
          listTrending.add(item);
        });
        return listTrending;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
