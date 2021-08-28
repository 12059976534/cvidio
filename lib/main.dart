import 'package:caivideo/page/splashscreen/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      title: 'Flutter Demo',
=======
      title: 'CAIvidio',
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splashpage(),
    );
  }
}
