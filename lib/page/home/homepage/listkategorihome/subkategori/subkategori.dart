import 'package:caivideo/model/allvideo/Homeallvideo.dart';
import 'package:caivideo/page/playervideo/play.dart';
import 'package:caivideo/service/videoallHome.dart';
import 'package:flutter/material.dart';

class SubKategori extends StatefulWidget {
  final String? name;
  final String? id;
  SubKategori({Key? key, this.id, this.name}) : super(key: key);

  @override
  _SubKategoriState createState() => _SubKategoriState();
}

class _SubKategoriState extends State<SubKategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.purple.shade900),
        backgroundColor: Colors.white,
        title:
            Text(widget.name!, style: TextStyle(color: Colors.purple.shade900)),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder<List<LatestVideo>>(
              future: HomeallvideoService.getListUser(id: widget.id.toString()),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int i) {
                        return buildloadingcard(context);
                      });
                } else {
                  List<LatestVideo>? listVideoall = snapshot.data;
                  return ListView.builder(
                      itemCount: listVideoall!.length,
                      itemBuilder: (BuildContext context, int i) {
                        return cardtren(listVideoall[i], context, listVideoall);
                      });
                }
              })),
    );
  }
}

cardtren(LatestVideo data, BuildContext context, List video) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => SamplePlayer(
                link: data.stream, media: video, title: data.title)),
      );
    },
    child: Column(
      children: <Widget>[
        // image
        Stack(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(data.coverPhoto!), fit: BoxFit.fill),
              color: Colors.white,
            ),
          ),
        ]),

        // ====
        // description
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(data.coverPhoto!),
            ),
            title: Text(
              data.title!,
            ),
            subtitle: Text(data.category!),
            // trailing: Icon(Icons.more_vert),
          ),
          decoration: BoxDecoration(color: Colors.white),
        )
        // ====
      ],
    ),
  );
}

Widget buildloadingcard(BuildContext context) {
  var math;
  return Column(
    children: <Widget>[
      // image
      Stack(children: <Widget>[
        Container(
          color: Colors.black12,
          height: MediaQuery.of(context).size.height / 3,
          child: Center(
            child: Container(
                width: 30,
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      CircularProgressIndicator(color: Colors.purple.shade900),
                )),
          ),
        ),
      ]),

      // ====
      // description
      Container(
        child: ListTile(
          leading: Container(
            child: CircleAvatar(
              backgroundColor: Colors.black12,
            ),
          ),
          title: Container(
            color: Colors.black12,
          ),
          subtitle: Container(
            color: Colors.black12,
          ),
          // trailing: Icon(Icons.more_vert),
        ),
        decoration: BoxDecoration(color: Colors.white),
      )
      // ====
    ],
  );
}
