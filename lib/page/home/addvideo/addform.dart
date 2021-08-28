<<<<<<< HEAD
import 'dart:io';

import 'package:better_player/better_player.dart';
import 'package:caivideo/model/kategori/HomeKategori.dart';
import 'package:caivideo/page/home/homepage/listkategorihome/kategorivideo.dart';
import 'package:caivideo/service/KategoriVideo.dart';
import 'package:caivideo/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:caivideo/service/addVideoService.dart';

import 'widget.dart';
=======
import 'package:caivideo/model/kategori/HomeKategori.dart';
import 'package:caivideo/service/KategoriVideo.dart';
import 'package:caivideo/utils/string.dart';
import 'package:flutter/material.dart';
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983

class AddForm extends StatefulWidget {
  const AddForm({Key? key}) : super(key: key);

  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
<<<<<<< HEAD
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(),
    );

    // ============================
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  var service = new Upload();
=======
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
  var email;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var _currentSelectedValue;
<<<<<<< HEAD

  var x;
  datalist() async {
    await KategoriService.getListKategori().then((value) {
      List<String> kategoridata = [];
      for (int i = 0; i < value.length; i++) {
        kategoridata.add(value[i].name.toString());
      }
      x = kategoridata;
      setState(() {});
    });
    print("data geters: $x");
    // return x;
  }
=======
     

     var x;
     datalist() async {
        await KategoriService.getListKategori().then((value) {
          List<String> kategoridata = [];
          for (int i = 0; i < value.length; i++) {
            kategoridata.add(value[i].name.toString());
          }
          x = kategoridata;
          setState(() {});
        });
        print("data geters: $x");
        // return x;
      }
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983

  _showMsg(msg) {
    final snackBar = SnackBar(
      content: Text(msg),
    );
    _scaffoldKey.currentState!.showSnackBar(snackBar);
  }

  var _chosenValue;
  var _textpriveiw;
  var k = KategoriService();

  late var dataku;

<<<<<<< HEAD
  // ====vidiopick====
  var datavideo;
  // =================
  // ====thunailspick==
  var datathumnails;
  // ==================

  // controler
  final formGlobalKey = GlobalKey<FormState>();

  @override
  TextEditingController namavidio = TextEditingController();
  TextEditingController deskripsi = TextEditingController();
  // ===/control====
=======
  @override
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
  void initState() {
    // TODO: implement initState
    super.initState();
    datalist();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: <Widget>[
<<<<<<< HEAD
        // ====vidio====
=======
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
        Container(
          margin: EdgeInsets.only(left: 5, right: 5, top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 3),
                      child: Text("pilih video")),
                ],
              ),
              GestureDetector(
<<<<<<< HEAD
                onTap: () async {
                  var videopick = await ImagePicker()
                      .pickVideo(source: ImageSource.gallery);
                  datavideo = videopick;
                  setState(() {});
                },
                child: (datavideo == null)
                    ? Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3.5,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/image/add/Group 42.png"),
                                fit: BoxFit.fill)),
                      )
                    : Container(
                        margin: EdgeInsets.only(bottom: 5),
                        // width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height / 3.5,
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: BetterPlayer.file(
                            datavideo.path,
                            betterPlayerConfiguration:
                                BetterPlayerConfiguration(
                              // autoPlay: true,

                              aspectRatio: 16 / 9,
                            ),
                          ),
                        ),
                      ),
=======
                onTap: () => print("berfungsi"),
                child: Container(
                  margin: EdgeInsets.only(bottom: 5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/add/Group 42.png"),
                          fit: BoxFit.fill)),
                ),
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 3),
                      child: Text("pilih thumnail")),
                ],
              ),
              GestureDetector(
<<<<<<< HEAD
                onTap: () async {
                  var data = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  // XFile thumnails = (await ImagePicker()
                  //     .pickImage(source: ImageSource.gallery)) as XFile;
                  datathumnails = data;
                  setState(() {});
                },
                child: (datathumnails != null)
                    ? Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3.5,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                // image: AssetImage("assets/image/add/Group 45.png"),
                                image: FileImage(File(datathumnails.path)),
                                fit: BoxFit.fill)),
                      )
                    : Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3.5,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/image/add/Group 45.png"),
                                // image:  FileImage(datathumnails),
                                fit: BoxFit.fill)),
                      ),
=======
                onTap: () => print("berfungsi"),
                child: Container(
                  margin: EdgeInsets.only(bottom: 5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/add/Group 45.png"),
                          fit: BoxFit.fill)),
                ),
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
              ),
            ],
          ),
        ),

        // ===
<<<<<<< HEAD
        // ==== nama vidio ===
=======
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
        Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 5, top: 5),
                      child: Text('Nama video')),
                ],
              ),
              TextFormField(
<<<<<<< HEAD
                  key: formGlobalKey,
                  controller: namavidio,
=======
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),

                    hintText: 'Judul video',
                    // labelText: "Email",
                    contentPadding: const EdgeInsets.only(left: 120),
                    labelStyle: TextStyle(color: Colors.black54),
                    // prefixIcon: Icon(Icons.ac_unit),
                    // suffixIcon: Icon(
                    //   Icons.email,
                    //   color: Colors.black54,
                    // ),
                  ),
                  validator: (emailValue) {
                    if (emailValue!.isEmpty) {
                      return 'Please enter your email';
                    }
                    email = emailValue;
                    return null;
                  }),
            ],
          ),
        ),

<<<<<<< HEAD
        // // ====deskripsi====
=======
        // ===
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
        Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 5, top: 5),
                      child: Text('Deskripsi')),
                ],
              ),
              TextFormField(
<<<<<<< HEAD
                  key: formGlobalKey,
                  controller: deskripsi,
=======
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),

                    hintText: 'Deskripsi',
                    // labelText: "Email",
                    contentPadding: const EdgeInsets.only(left: 120),
                    labelStyle: TextStyle(color: Colors.black54),
                    // prefixIcon: Icon(Icons.ac_unit),
                    // suffixIcon: Icon(
                    //   Icons.email,
                    //   color: Colors.black54,
                    // ),
                  ),
                  validator: (emailValue) {
                    if (emailValue!.isEmpty) {
                      return 'Please enter your email';
                    }
                    email = emailValue;
                    return null;
                  }),
            ],
          ),
        ),

<<<<<<< HEAD
        // ==dropdown kategori and sub==
        Container(
          color: Colors.amberAccent,
          margin: EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 30),
          padding: EdgeInsets.only(top: 5, bottom: 5),
=======
        // ==dropdown==
        Container(
          color: Colors.amberAccent,
          margin: EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 30),
          padding: EdgeInsets.only(top: 5,bottom: 5),
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //==kategori==
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                width: MediaQuery.of(context).size.width / 2.3,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: DropdownButton<String>(
                    underline: SizedBox(),
                    // focusColor: Colors.white,
                    value: _chosenValue,
                    elevation: 0,

                    style: TextStyle(color: Colors.white),
                    iconEnabledColor: Colors.black,
<<<<<<< HEAD
                    items: (x != null)
                        ? x.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Container(
                                child: Text(
                                  value,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            );
                          }).toList()
                        : <String>["waiting"]
                            .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
=======
                    // items: <String>[
                    //   'Android',
                    //   'IOS',
                    //   'Flutter',
                    //   'Node',
                    //   'Java',
                    //   'Python',
                    //   'PHP',
                    // ].map<DropdownMenuItem<String>>((String value) {
                    //   return DropdownMenuItem<String>(
                    //     value: value,
                    //     child: Text(
                    //       value,
                    //       style: TextStyle(color: Colors.black),
                    //     ),
                    //   );
                    // }).toList(),
                    items: (x!=null)?
                    x.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                  
                        value: value,
                        child: Container(
                          child: Text(
                            value,overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      );
                    }).toList()
                    :<String>["waiting"].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983

                    hint: (_textpriveiw == null)
                        ? Text('Kategory')
                        : Text("$_textpriveiw"),

                    onChanged: (value) {
                      setState(() {
                        _chosenValue = value;
                        _textpriveiw = value;
                        print(value);
                      });
                    },
                  ),
                ),
              ),
              // ==========
              // ==subkategori==
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                width: MediaQuery.of(context).size.width / 2.3,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: DropdownButton<String>(
                    underline: SizedBox(),
                    focusColor: Colors.white,
                    value: _chosenValue,
                    elevation: 0,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor: Colors.black,
<<<<<<< HEAD
                    items: <String>[]
                        .map<DropdownMenuItem<String>>((String value) {
=======
                    items: <String>[
                      
                    ].map<DropdownMenuItem<String>>((String value) {
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.red),
                        ),
                      );
                    }).toList(),
                    hint: (_textpriveiw == null)
                        ? Text(
                            'Sub-category',
                          )
                        : Text("$_textpriveiw"),
                    // elevation: 0,
                    onChanged: (value) {
                      setState(() {
                        _chosenValue = value;
                        _textpriveiw = value;
                        print(value);
                      });
                    },
                  ),
                ),
              ),
              // ===============
            ],
          ),
        ),
        // ==/dropdown==

<<<<<<< HEAD
        GestureDetector(
          onTap: () async {
            // var file =
            //     await ImagePicker().pickVideo(source: ImageSource.gallery);
            var res = await service
                .uploadFileToServer(
                  // file!.path,
                  datathumnails.path,
                  datavideo.path,
                  _textpriveiw,
                  namavidio.text,
                  deskripsi.text,
                )
                .then((value) => (data) {
                      print(data);
                    });
            setState(() {});
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 20, right: 5, left: 5),
            padding: EdgeInsets.all(19),
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text("Upload"),
            ),
            decoration: BoxDecoration(
                color: Colors.purple.shade900,
                borderRadius: BorderRadius.circular(5)),
          ),
=======
        Container(
          margin: EdgeInsets.only(bottom: 20, right: 5, left: 5),
          padding: EdgeInsets.all(19),
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text("Upload"),
          ),
          decoration: BoxDecoration(
              color: Colors.purple.shade900,
              borderRadius: BorderRadius.circular(5)),
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
        )
      ],
    ));
  }
}
