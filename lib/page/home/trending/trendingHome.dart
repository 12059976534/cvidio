import 'package:caivideo/model/trending/hometrending.dart';
import 'package:caivideo/page/playervideo/play.dart';
import 'package:caivideo/service/trendingHomeService.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TrandingHOme extends StatefulWidget {
  const TrandingHOme({Key? key}) : super(key: key);

  @override
  _TrandingHOmeState createState() => _TrandingHOmeState();
}

class _TrandingHOmeState extends State<TrandingHOme> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: FutureBuilder<List<Media>>(
          future: TrendingService.getListUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int i) {
                    return buildloadingcard(context);
                  });
            } else {
              List<Media>? listVideoall = snapshot.data;
              return ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: listVideoall!.length,
                  itemBuilder: (BuildContext context, int i) {
                    return cardtren(listVideoall[i], context, listVideoall);
                  });
            }
          }),
    );
  }
}

cardtren(Media data, BuildContext context, List video) {
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
          Container(
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Colors.black38,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.black38,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          // color: Colors.black38,
                          padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                  child: Container(
                                      child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                              ))),
                              GestureDetector(
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(17, 0, 0, 0),
                                      child: Icon(
                                        Icons.chat_bubble_outline,
                                        color: Colors.white,
                                      ))),
                              GestureDetector(
                                  child: Container(
                                margin: EdgeInsets.fromLTRB(17, 0, 0, 0),
                                child: Transform.rotate(
                                    angle: 180 * math.pi / 102,
                                    child: Icon(
                                      Icons.send_outlined,
                                      color: Colors.white,
                                    )),
                              ))
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          // color: Colors.black12,
                          child: GestureDetector(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.volume_off_outlined,
                                color: Colors.white,
                              )
                            ],
                          )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
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
        Container(
          height: MediaQuery.of(context).size.height / 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.black38,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.06,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.black38,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.06,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        // color: Colors.black38,
                        padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                                child: Container(
                                    child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.white,
                            ))),
                            GestureDetector(
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(17, 0, 0, 0),
                                    child: Icon(
                                      Icons.chat_bubble_outline,
                                      color: Colors.white,
                                    ))),
                            GestureDetector(
                                child: Container(
                              margin: EdgeInsets.fromLTRB(17, 0, 0, 0),
                              child: Transform.rotate(
                                  angle: 180 * math.pi / 102,
                                  child: Icon(
                                    Icons.send_outlined,
                                    color: Colors.white,
                                  )),
                            ))
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        // color: Colors.black12,
                        child: GestureDetector(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.volume_off_outlined,
                              color: Colors.white,
                            )
                          ],
                        )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
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
