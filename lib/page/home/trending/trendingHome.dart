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
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, indext) {
            return Column(
              children: <Widget>[
                // image
                Stack(children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://balisobek.com/wp-content/uploads/2019/10/sobek-Bali-adventure-tours-1.jpg"),
                          fit: BoxFit.fill),
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
                                              margin: EdgeInsets.fromLTRB(
                                                  17, 0, 0, 0),
                                              child: Icon(
                                                Icons.chat_bubble_outline,
                                                color: Colors.white,
                                              ))),
                                      GestureDetector(
                                          child: Container(
                                        margin:
                                            EdgeInsets.fromLTRB(17, 0, 0, 0),
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
                      backgroundImage: NetworkImage(
                          "https://balisobek.com/wp-content/uploads/2019/10/sobek-Bali-adventure-tours-1.jpg"),
                    ),
                    title: Text('Two-line ListTile'),
                    subtitle: Text('Here is a second line'),
                    // trailing: Icon(Icons.more_vert),
                  ),
                  decoration: BoxDecoration(color: Colors.white),
                )
                // ====
              ],
            );
          }),
    );
  }
}
