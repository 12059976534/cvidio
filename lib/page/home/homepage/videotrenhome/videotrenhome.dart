import 'package:cached_network_image/cached_network_image.dart';
import 'package:caivideo/model/trending/hometrending.dart';
import 'package:caivideo/page/playervideo/play.dart';
import 'package:caivideo/service/trendingHomeService.dart';
import 'package:flutter/material.dart';

class VideoTrenHome extends StatefulWidget {
  const VideoTrenHome({Key? key}) : super(key: key);

  @override
  _VideoTrenHomeState createState() => _VideoTrenHomeState();
}

class _VideoTrenHomeState extends State<VideoTrenHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height - 100 * 5.01,
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder<List<Media>>(
            future: TrendingService.getListUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return buildloadingcard(context);
              } else {
                List<Media>? listVideoall = snapshot.data;
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listVideoall!.length,
                    itemBuilder: (BuildContext context, int i) {
                      return buildcard(listVideoall[i], context,listVideoall);
                    });
              }
            }));
  }
}

Widget buildcard(Media data, BuildContext context,List video) {
  return GestureDetector(
    onTap: () {
        Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) => SamplePlayer(
                  link: data.stream, media: video, title: data.title)),
        );
      },
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: ClipRRect(
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
          Container(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(data.coverPhoto!),
              ),
              title: Text(
                data.title!,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                maxLines: 2,
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data.category!),
                  Text(data.viewsCount! + " views"),
                ],
              ),
  
              // trailing: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildloadingcard(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 500,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black12,
            width: MediaQuery.of(context).size.width,
            height: 250,
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
        ),
      ],
    ),
  );
}
