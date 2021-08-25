import 'package:cached_network_image/cached_network_image.dart';
import 'package:caivideo/model/allvideo/Homeallvideo.dart';
import 'package:caivideo/page/playervideo/play.dart';
import 'package:caivideo/service/videoallHome.dart';
import 'package:flutter/material.dart';

class NewVideo extends StatefulWidget {
  const NewVideo({Key? key}) : super(key: key);

  @override
  _NewVideoState createState() => _NewVideoState();
}

class _NewVideoState extends State<NewVideo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder<List<LatestVideo>>(
            future: HomeallvideoService.getListUser(),
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
                List<LatestVideo>? listVideoall = snapshot.data;
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listVideoall!.length,
                    itemBuilder: (BuildContext context, int i) {
                      return itemvideo(listVideoall[i], context, listVideoall);
                    });
              }
            }));
  }
}

Widget itemvideo(LatestVideo data, BuildContext context, List video) {
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) => SamplePlayer(
                  link: data.stream, media: video, title: data.title)),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 200,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: CachedNetworkImage(
                    imageUrl: data.coverPhoto!,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                        width: 20,
                        height: 20,
                        child: Center(
                            child: CircularProgressIndicator(
                          color: Colors.purple.shade900,
                        ))),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
        Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) => SamplePlayer(
                  link: data.stream, media: video, title: data.title)),
        );
      },
              child: Container(
                  child: ListTile(
                title: Text(
                  data.title!,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  maxLines: 2,
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.category!,
                      maxLines: 2,
                    ),
                    Text(data.viewsCount! + " views"),
                  ],
                ),
              )),
            ),
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
