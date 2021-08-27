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

class AddForm extends StatefulWidget {
  const AddForm({Key? key}) : super(key: key);

  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
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
  var email;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var _currentSelectedValue;

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
        // ====vidio====
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
              ),
            ],
          ),
        ),

        // ===
        // ==== nama vidio ===
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
                  key: formGlobalKey,
                  controller: namavidio,
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

        // // ====deskripsi====
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
                  key: formGlobalKey,
                  controller: deskripsi,
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

        // ==dropdown kategori and sub==
        Container(
          color: Colors.amberAccent,
          margin: EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 30),
          padding: EdgeInsets.only(top: 5, bottom: 5),
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
                    items: <String>[]
                        .map<DropdownMenuItem<String>>((String value) {
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
        )
      ],
    ));
  }
}
