import 'package:caivideo/page/home/addvideo/addvideo.dart';
import 'package:caivideo/page/home/sigin/siginHome.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'addform.dart';

class Homeaddvideo extends StatefulWidget {
  const Homeaddvideo({Key? key}) : super(key: key);

  @override
  _HomeaddvideoState createState() => _HomeaddvideoState();
}

class _HomeaddvideoState extends State<Homeaddvideo> {
  bool isAuth = false;

  @override
  void initState() {
    super.initState();
    _checkIfLoggedIn();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      if (mounted) {
        setState(() {
          isAuth = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return (isAuth) ? AddVideoHome() : SiginHome();
    // return (isAuth) ? AddVideoHome() : AddForm();
=======
    // return (isAuth) ? AddVideoHome() : SiginHome();
    return (isAuth) ? AddForm() : SiginHome();
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
  }
}
