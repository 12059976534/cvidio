import 'package:caivideo/page/home/playlist/size_helper.dart';
import 'package:flutter/material.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  _PlaylistPageState createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple.shade900,
                    onPrimary: Colors.white,
                    shadowColor: Colors.purple.shade900,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    minimumSize: Size(
                        MediaQuery.of(context).size.width, 40), //////// HERE
                  ),
                  onPressed: () {},
                  child: Text('Tambah Playlist Baru'),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple.shade900,
                    onPrimary: Colors.white,
                    shadowColor: Colors.purple.shade900,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    minimumSize: Size(
                        MediaQuery.of(context).size.width, 40), //////// HERE
                  ),
                  onPressed: () {},
                  child: Text('Hapus Playlist'),
                ),
              ),
            ),
          ),
          Container(
            height: displayHeight(context) -
                MediaQuery.of(context).size.height / 3 -
                5,
            width: MediaQuery.of(context).size.width,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: <Widget>[
                Cardwiget(),
                Cardwiget(),
                Cardwiget(),
                Cardwiget(),
                Cardwiget(),
                Cardwiget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Cardwiget extends StatelessWidget {
  const Cardwiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 12,
            child: Image.network(
              "https://balisobek.com/wp-content/uploads/2019/10/sobek-Bali-adventure-tours-1.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            child: Text("Video mIX",
                maxLines: 1,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
          ),
          Container(
            child: Text("2 video",
                style: TextStyle(fontSize: 10, color: Colors.black26)),
          )
        ],
      ),
    );
  }
}
