import 'package:flutter/material.dart';

import 'profilewiget.dart';

class Editform extends StatefulWidget {
  const Editform({Key? key}) : super(key: key);

  @override
  _EditformState createState() => _EditformState();
}

class _EditformState extends State<Editform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: new IconButton(
          icon: Image.asset("assets/image/globalIcon/backicon.png"),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                print("object");
                //           Navigator.of(context).push(MaterialPageRoute(
                // builder: (BuildContext context) => ViewAll()));
              },
              child: Image(image: AssetImage("assets/image/globalIcon/notipikasi.png"),)
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                print("object");
                //           Navigator.of(context).push(MaterialPageRoute(
                // builder: (BuildContext context) => ViewAll()));
              },
              child: Image(image: AssetImage("assets/image/globalIcon/settings.png"))
            ),
          ),
        ],
      ),
      body: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.5),
                //     spreadRadius: 1,
                //     blurRadius: 1,
                //     offset: Offset(0, 3), // changes position of shadow
                //   ),
                // ],
                ),
            child: Column(
              children: [
                formField(context, "Nama Lengkap"),
                formField(context, "NIK"),
                formField(context, "Username"),
                formField(context, "Alamat"),
                formField(context, "Jenis Kelamin"),
                formField(context, "No. Telpon"),
                formField(context, "Email"),
                formField(context, "Bank Anda"),
                formField(context, "No. Rekening"),
                formField(context, "Pemilik Rekening"),
                formField(context, "Ahli Waris"),
                formField(context, "ID Sponsor"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
