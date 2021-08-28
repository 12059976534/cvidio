import 'dart:convert';
import 'package:caivideo/model/kategori/HomeKategori.dart';
<<<<<<< HEAD
=======
import 'package:caivideo/model/kategori/SubKategori.dart';
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
import 'package:http/http.dart' as http;

class KategoriService {
  static Future<List<Kategori>> getListKategori() async {
    List<Kategori> listTrending = [];
    final response =
        await http.get(Uri.parse("https://uvid.site/fetch_categories"));
    try {
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        HomekategoriRespon responUser = HomekategoriRespon.fromJson(json);
        responUser.categories!.forEach((item) {
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
<<<<<<< HEAD
=======

  static Future<List<Subcategory>> getsubListKategori(id) async {
    List<Subcategory> listTrending = [];
    final response = await http
        .get(Uri.parse("https://uvid.site/fetch_subcategories?id=${id}"));
    try {
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        SubCategory respon = SubCategory.fromJson(json);
        respon.subcategories!.forEach((item) {
         
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
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
}
