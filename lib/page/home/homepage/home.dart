import 'package:caivideo/page/home/homepage/listkategorihome/kategorivideo.dart';
import 'package:caivideo/page/home/homepage/listvideoterbaru/newvideo.dart';
import 'package:caivideo/page/home/homepage/videotrenhome/videotrenhome.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 8),
            NewVideo(),
            Container(
              margin: const EdgeInsets.only(right: 250),
              child: Text(
                "Trending Video",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
            SizedBox(height: 10),
            VideoTrenHome(),
            Container(
              margin: const EdgeInsets.only(right: 250, top: 20),
              child: Text(
                "Kategori Video",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
            SizedBox(height: 8),
            KategoriVideo(),
          ],
        ),
      ),
    );
  }
}
