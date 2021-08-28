<<<<<<< HEAD
import 'package:http/http.dart' as http;

class Upload {
  Future<String?> uploadFileToServer(
      thumnailpath, vidiopath, kategoridata, namaVideo, deskripsividio) async {
    var request = new http.MultipartRequest(
        "POST", Uri.parse('http://192.168.43.61:3001/mahasiswa/'));
=======

import 'package:http/http.dart' as http;

class Upload {
  Future<String?> uploadFileToServer(imagePath,kategoridata,namaVideo,deskripsividio) async {
    var request = new http.MultipartRequest(
        "POST", Uri.parse('http://testing.uvid.site'));
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
    request.fields['nama video'] = namaVideo;
    request.fields['deskripsi'] = deskripsividio;
    request.fields['category'] = kategoridata;
    // request.fields['sub-category'] = '';
<<<<<<< HEAD
    request.files
        .add(await http.MultipartFile.fromPath('Pilih video', thumnailpath));
    request.files
        .add(await http.MultipartFile.fromPath('Pilih thumbnail', vidiopath));
=======
    request.files.add(await http.MultipartFile.fromPath('Pilih video', imagePath));
    request.files.add(await http.MultipartFile.fromPath('Pilih thumbnail', imagePath));
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
    request.send().then((response) {
      http.Response.fromStream(response).then((onValue) {
        try {
          // get your response here...
          print(response);
<<<<<<< HEAD
          return response;
=======
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
        } catch (e) {
          // handle exeption
        }
      });
    });
  }
}
<<<<<<< HEAD
=======





>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
