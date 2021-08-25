import 'dart:convert';
import 'package:caivideo/page/home/mainpage.dart';
import 'package:caivideo/service/LoginService.dart';
import 'package:caivideo/service/addVideoService.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';

class AddVideoHome extends StatefulWidget {
  const AddVideoHome({Key? key}) : super(key: key);

  @override
  _AddVideoHomeState createState() => _AddVideoHomeState();
}

class _AddVideoHomeState extends State<AddVideoHome> {
  var service = new Upload();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        //image profile
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrCQGNZfrSIPzy9tZpDUrTg6PAEORRzUZHkA&usqp=CAU"),
            child: Container(
                // color: Colors.black,
                margin: EdgeInsets.only(left: 20, top: 12),
                child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/image/imageProfile/plus.png"),
                    backgroundColor: Colors.white,
                    radius: 10)),
          ),
          title: Text('Two-line ListTile'),
          subtitle: Text('Here is a second line'),
          trailing: Icon(Icons.more_vert),
        ),

        //editbutton
        Container(
          child: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple.shade900,
                      onPrimary: Colors.white,
                      shadowColor: Colors.purple.shade900,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      minimumSize: Size(
                          MediaQuery.of(context).size.width, 50), //////// HERE
                    ),
                    onPressed: () {
                      logout();
                    },
                    child: Text('EDIT'),
                  ),
                ),
              ),
            ),
          ),
        ),

        //logout button
        Container(
          child: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple.shade900,
                      onPrimary: Colors.white,
                      shadowColor: Colors.purple.shade900,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      minimumSize: Size(
                          MediaQuery.of(context).size.width, 50), //////// HERE
                    ),
                    onPressed: () async {
                      
                      // service.uploadFileToServer("imagePath");
                      // var file = await ImagePicker.pickImage(source: ImageSource.gallery);
                      // var file = await ImagePicker()
                      //     .pickVideo(source: ImageSource.gallery);
                      // var res = await service
                      //     .uploadFileToServer(file!.path)
                      //     .then((value) => (data) {
                      //           print(data);  
                      //         });
                      // setState(() {});
                    },
                    child: Text('Add Video'),
                  ),
                ),
              ),
            ),
          ),
        ),

        //logout button
        Container(
          child: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple.shade900,
                      onPrimary: Colors.white,
                      shadowColor: Colors.purple.shade900,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      minimumSize: Size(
                          MediaQuery.of(context).size.width, 50), //////// HERE
                    ),
                    onPressed: () {
                      logout();
                    },
                    child: Text('LOGOUT'),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  void logout() async {
    var res = await Network().getData('/api/auth/logout');
    var body = json.decode(res.body);
    if (body['success']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.remove('user');
      localStorage.remove('token');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainPage()));
    }
  }
}
