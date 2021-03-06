
import 'package:http/http.dart' as http;

class Upload {
  Future<String?> uploadFileToServer(
      thumnailpath, vidiopath, kategoridata, namaVideo, deskripsividio) async {
    var request = new http.MultipartRequest(
        "POST", Uri.parse('http://192.168.43.61:3001/mahasiswa/'));
    request.fields['nama video'] = namaVideo;
    request.fields['deskripsi'] = deskripsividio;
    request.fields['category'] = kategoridata;
    // request.fields['sub-category'] = '';
    request.files
        .add(await http.MultipartFile.fromPath('Pilih video', thumnailpath));
    request.files
        .add(await http.MultipartFile.fromPath('Pilih thumbnail', vidiopath));
    request.send().then((response) {
      http.Response.fromStream(response).then((onValue) {
        try {
          // get your response here...
          print(response);
          return response;

        } catch (e) {
          // handle exeption
        }
      });
    });
  }
}
