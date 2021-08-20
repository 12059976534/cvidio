
import 'package:http/http.dart' as http;

class Upload {
  Future<String?> uploadFileToServer(imagePath) async {
    var request = new http.MultipartRequest(
        "POST", Uri.parse('http://192.168.43.61:3001/mahasiswa/'));
    request.fields['nime'] = '180202009';
    request.fields['nama'] = 'My first image';
    request.fields['jurusan'] = 'TK';
    request.files.add(await http.MultipartFile.fromPath('poto', imagePath));
    request.send().then((response) {
      http.Response.fromStream(response).then((onValue) {
        try {
          // get your response here...
          print(response);
        } catch (e) {
          // handle exeption
        }
      });
    });
  }
}
