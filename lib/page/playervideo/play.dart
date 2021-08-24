import 'package:better_player/better_player.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SamplePlayer extends StatefulWidget {
  String? link;
  List? media;
  String? title;

  SamplePlayer({this.link, this.media, this.title, Key? key}) : super(key: key);

  @override
  _SamplePlayerState createState() => _SamplePlayerState();
}

class _SamplePlayerState extends State<SamplePlayer> {
  late BetterPlayerController _betterPlayerController;
  late BetterPlayerDataSource _betterPlayerDataSource;

  @override
  void initState() {
    BetterPlayerConfiguration betterPlayerConfiguration =
        BetterPlayerConfiguration(
      aspectRatio: 16 / 9,
      fit: BoxFit.contain,
      autoPlay: true,
      looping: true,
    );
    _betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      widget.link!,
    );
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    _betterPlayerController.setupDataSource(_betterPlayerDataSource);
    super.initState();
  }

  ganti(data) async {
    setState(() {
      widget.title = data.title;
      _betterPlayerController.stopPreCache(_betterPlayerDataSource);
      _betterPlayerController.clearCache();
      _betterPlayerController.pause();

      BetterPlayerConfiguration betterPlayerConfiguration =
          BetterPlayerConfiguration(
        aspectRatio: 16 / 9,
        fit: BoxFit.contain,
        autoPlay: true,
        looping: true,
      );
      _betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        data.stream,
      );
      _betterPlayerController =
          BetterPlayerController(betterPlayerConfiguration);
      _betterPlayerController.setupDataSource(_betterPlayerDataSource);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.purple.shade900,
        ),
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: BetterPlayer(
                controller: _betterPlayerController,
              ),
            ),
            Container(
                height: 60,
                color: Colors.white24,
                child: ListTile(
                  title: Text(widget.title!,
                      maxLines: 1, style: TextStyle(fontSize: 18.0)),
                  subtitle: Text("100 kali di tonton",
                      style: TextStyle(fontSize: 12.0)),
                )),
            Container(
                height: 80,
                color: Colors.white24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildButtonColumn(Colors.black, Icons.favorite, 'LIKE'),
                    _buildButtonColumn(Colors.black, Icons.comment, 'KOMENTAR'),
                    _buildButtonColumn(Colors.black, Icons.near_me, 'DOWNLOAD'),
                    _buildButtonColumn(Colors.black, Icons.share, 'SHARE'),
                  ],
                )),
            SingleChildScrollView(
              child: Container(
                  height: MediaQuery.of(context).size.height - 100 * 5.02,
                  child: ListView.builder(
                      itemCount: widget.media!.length,
                      itemBuilder: (BuildContext context, i) {
                        return buildRow(context, widget.media![i]);
                      })),
            )
          ],
        ));
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildRow(context, data) {
    return ListTile(
      title: Text(
        data.title,
        maxLines: 2,
        style: TextStyle(fontSize: 16.0),
      ),
      subtitle: Text(data.category),
      leading: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 100,
          maxWidth: 100,
          maxHeight: 100,
        ),
        child: GestureDetector(
          onTap: () {
            ganti(data);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
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
    );
  }
}
