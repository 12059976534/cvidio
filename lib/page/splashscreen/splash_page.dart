import 'dart:async';
import 'package:caivideo/page/home/mainpage.dart';
import 'package:caivideo/page/onbording/onbording_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({Key? key}) : super(key: key);

  @override
  _SplashpageState createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    super.initState();
    cekintro();
  }

  Future<void> cekintro() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var intro = ((localStorage.getBool('intro') == null) ? false : true);

    if (intro == true) {
      Timer(
          Duration(seconds: 5),
          () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MainPage())));
    } else {
      Timer(
          Duration(seconds: 5),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => OnBoardingPage())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/image/bg-spalsh.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/image/shadow.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/logo.png") //NetworkImage
                      ), //DecorationImage
                ), //BoxDecoration
              ),
            ), //Con
          ],
        ));
  }
}
