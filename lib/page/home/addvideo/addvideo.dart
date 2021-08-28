import 'dart:convert';
import 'package:caivideo/page/home/mainpage.dart';
<<<<<<< HEAD
import 'package:caivideo/page/profile/editform.dart';
=======
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
import 'package:caivideo/service/LoginService.dart';
import 'package:caivideo/service/addVideoService.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';

<<<<<<< HEAD
import 'addform.dart';

=======
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
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
<<<<<<< HEAD
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: new IconButton(
          icon: Image.asset("assets/image/globalIcon/backicon.png"),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Channel saya",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          setAppbar(icondata: "assets/image/globalIcon/search.png",),
          setAppbar(icondata: "assets/image/globalIcon/filter.png",),
          setAppbar(icondata: "assets/image/globalIcon/notipikasi.png",),
          setAppbar(icondata: "assets/image/globalIcon/settings.png",),
        ],
      ),
      body: ListView(children: <Widget>[
        //image profile
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height / 9,
              // color: Colors.black,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  // minRadius: 30,
                  // maxRadius: 50,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrCQGNZfrSIPzy9tZpDUrTg6PAEORRzUZHkA&usqp=CAU"),
                  // child: Container(
                  //     // color: Colors.black,
                  //     margin: EdgeInsets.only(left: 20, top: 12),
                  //     child: CircleAvatar(
                  //         backgroundImage:
                  //             AssetImage("assets/image/imageProfile/plus.png"),
                  //         backgroundColor: Colors.white,
                  //         radius: 10)),
                ),
                title: Text('Two-line ListTile'),
                subtitle: Text('Here is a second line'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 37, top: 27),
              child: ListTile(
                leading: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      "assets/image/add/plus.png",
                    )),
              ),
            ),
          ],
=======
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
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
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
<<<<<<< HEAD
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Editform()));
=======
                      logout();
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
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
<<<<<<< HEAD
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => AddForm()));

=======
                      
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
                      // service.uploadFileToServer("imagePath");
                      // var file = await ImagePicker.pickImage(source: ImageSource.gallery);
                      // var file = await ImagePicker()
                      //     .pickVideo(source: ImageSource.gallery);
                      // var res = await service
                      //     .uploadFileToServer(file!.path)
                      //     .then((value) => (data) {
<<<<<<< HEAD
                      //           print(data);
=======
                      //           print(data);  
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
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

<<<<<<< HEAD
        //list vidio

        //  ==========
=======
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
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
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
<<<<<<< HEAD

class setAppbar extends StatelessWidget {
  String icondata;
  setAppbar({
    Key? key,
    required this.icondata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/10,
      // color: Colors.amber,
      margin: EdgeInsets.only(right: 1,left: 0),
      child: GestureDetector(
          onTap: () {
            print("object");
            //           Navigator.of(context).push(MaterialPageRoute(
            // builder: (BuildContext context) => ViewAll()));
          },
          child: Image(image: AssetImage(icondata))),
    );
  }
}
=======
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
