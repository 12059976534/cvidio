<<<<<<< HEAD
// import 'package:caivideo/model/trending/hometrending.dart';
import 'package:caivideo/page/home/addvideo/addvideo.dart';
=======

>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
import 'package:flutter/material.dart';

class SudahloginHOme extends StatefulWidget {
  const SudahloginHOme({Key? key}) : super(key: key);

  @override
  _SudahloginHOmeState createState() => _SudahloginHOmeState();
}

class _SudahloginHOmeState extends State<SudahloginHOme> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return ListView(
      children: [
        Container(
          child: Stack(children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[

                  // ==image==
                  Stack(children: <Widget>[
                    Column(
                      children: [
                        // ==image sampul==
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 2 * 0.50,
                          margin: EdgeInsets.only(left: 5, right: 5, top: 5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfx1SOQlpRfEr-QYx6DgxGNfReh_6h-4_qIg&usqp=CAU"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              )),
                        ),
                        // ==/image sampu==

                        // ==textdata==
                        Container(
                          margin: EdgeInsets.only(left: 97),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                // color: Colors.amber,
                                child: Text(
                                  "Andri Wahyu anugrah",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.purple.shade900),
                                ),
                              ),
                              Container(
                                child: Text("Premium . 30 hari"),
                              )
                            ],
                          ),
                        ),
                        // ==/texdata===
                      ],
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2 * 0.50,
                      margin: EdgeInsets.only(left: 5, right: 5, top: 5),
                      //  color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 7,
                            //  color: Colors.cyan,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  // color: Colors.cyan,
                                  child: Column(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(
                                              right: 25, top: 27, bottom: 10),
                                          child: Text(
                                            "CAI0987654",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      Container(
                                        // color: Colors.amberAccent,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              // color: Colors.blue,
                                              child: GestureDetector(
                                                child: Icon(
                                                  Icons.copy,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: GestureDetector(
                                                child: Icon(
                                                  Icons.share,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    // ==poto==
                    Container(
                      margin: EdgeInsets.only(top: 120, left: 15),
                      child: Stack(children: <Widget>[
                        
                        Container(
                          // margin: EdgeInsets.only(top: 45,left: 49),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(  
                            radius: 40,
                            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3T2qz5iz0E82U13Lcrc5Ec-SUd8nWSAc84g&usqp=CAU"),
                          ),
                            
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50,left: 57),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("assets/image/globalIcon/plus.png"),
                          ),
                        )
                      ]),
                    ),
                    // ==/poto==
                  ]
                  ),

                  // ==/image==

                  Container(
                    margin:
                        EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 7),
                    child: Card(
                      elevation: 2,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            // ==============
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      // width: MediaQuery.of(context).size.width/2,
                                      height: 160,
                                      padding: EdgeInsets.all(60),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black87),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/image/add/user 1.png"),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () => Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  AddVideoHome())),
                                      child: Container(
                                        // key: _key,
                                        // width: MediaQuery.of(context).size.width/2,
                                        // height: MediaQuery.of(context).size.height/3.3,
                                        height: 160,
                                        padding: EdgeInsets.all(60),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black87),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/image/add/videosaya 1.png",
                                                ),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // ================
                            // ========2=======
                            Container(
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      // width: MediaQuery.of(context).size.width/2,
                                      height: 160,
                                      padding: EdgeInsets.all(60),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black87),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/image/add/reward 1.png"),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      // key: _key,
                                      // width: MediaQuery.of(context).size.width/2,
                                      // height: MediaQuery.of(context).size.height/3.3,
                                      height: 160,
                                      padding: EdgeInsets.all(60),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black87),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                "assets/image/add/downline 1.png",
                                              ),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
=======
    return Container(
      child: Stack(children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              // image
              Stack(children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2 * 0.50,
                  margin: EdgeInsets.only(left: 5, right: 5, top: 5),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfx1SOQlpRfEr-QYx6DgxGNfReh_6h-4_qIg&usqp=CAU"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2 * 0.50,
                  margin: EdgeInsets.only(left: 5, right: 5, top: 5),
                  //  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 7,
                        //  color: Colors.cyan,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              // color: Colors.cyan,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 25,top: 27,bottom: 10),
                                      child: Text(
                                    "CAI0987654",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                  Container(
                                    // color: Colors.amberAccent,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          // color: Colors.blue,
                                          child: GestureDetector(
                                            child: Icon(
                                              Icons.copy,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: GestureDetector(
                                            child: Icon(
                                              Icons.share,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
                                    ),
                                  )
                                ],
                              ),
<<<<<<< HEAD
                            ),
                            // ========2=======
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      margin: EdgeInsets.only(
                          top: 10, bottom: 25, left: 5, right: 5),
                      child: Center(
                        child: Text("WITHDRAW"),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.purple.shade900,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
=======
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]),
              // textdata
              Container(
                margin: EdgeInsets.only(left: 97),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      // color: Colors.amber,
                      child: Text(
                        "Andri Wahyu anugrah",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple.shade900),
                      ),
                    ),
                    Container(
                      child: Text("Premium . 30 hari"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

        // poto
        Stack(children: <Widget>[
          Container(
            // padding: EdgeInsets.all(30),
            margin: EdgeInsets.only(top: 120, left: 15),
            constraints: BoxConstraints(
                minWidth: 69, minHeight: 69, maxWidth: 90, maxHeight: 90),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              // image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3T2qz5iz0E82U13Lcrc5Ec-SUd8nWSAc84g&usqp=CAU"),)
            ),
          ),
          Container(
            // padding: EdgeInsets.all(30),
            margin: EdgeInsets.only(top: 125, left: 20),
            constraints: BoxConstraints(
                minWidth: 50, minHeight: 50, maxWidth: 80, maxHeight: 80),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3T2qz5iz0E82U13Lcrc5Ec-SUd8nWSAc84g&usqp=CAU"),
                )),
          ),
         ]
        )
       ]
      ),
    );
  }
}
>>>>>>> fb629eb12f1ab2f88e51d8b954fa780efd178983
