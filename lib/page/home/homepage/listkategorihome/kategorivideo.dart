import 'package:caivideo/model/kategori/HomeKategori.dart';
import 'package:caivideo/page/home/homepage/listkategorihome/subkategori/subkategori.dart';
import 'package:caivideo/service/KategoriVideo.dart';
import 'package:flutter/material.dart';

class KategoriVideo extends StatefulWidget {
  const KategoriVideo({Key? key}) : super(key: key);

  @override
  _KategoriVideoState createState() => _KategoriVideoState();
}

class _KategoriVideoState extends State<KategoriVideo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder<List<Kategori>>(
            future: KategoriService.getListKategori(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: loadingitemvideo(context),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: loadingitemvideo(context),
                          )
                        ],
                      )),
                );
              } else {
                List<Kategori>? listVideoall = snapshot.data;
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listVideoall!.length,
                    itemBuilder: (BuildContext context, int i) {
                      return itemvideo(listVideoall[i], context);
                    });
              }
            }));
  }
}

Widget itemvideo(Kategori data, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SubKategori(
                    id: data.id,
                    name: data.name,
                  )));
    },
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 200,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                      image: NetworkImage(data.thumbnail!), fit: BoxFit.fill),
                ),
              ),
            ),
            Container(
                child: ListTile(
              title: Text(
                data.name!,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                maxLines: 2,
              ),
              subtitle: Text(
                data.media_count! + " item",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                maxLines: 2,
              ),
              trailing: Icon(Icons.more_vert),
            )),
          ],
        ),
      ),
    ),
  );
}

Widget loadingitemvideo(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 200,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
              ),
              child: Center(
                child: Container(
                    width: 30,
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(
                          color: Colors.purple.shade900),
                    )),
              ),
            ),
          ],
        )),
  );
}
