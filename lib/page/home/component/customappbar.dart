import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

customappbar(BuildContext context, _selectedIndex) {
  return (_selectedIndex == 0)
      ? homeappbar()
      : (_selectedIndex == 1)
          ? trendingappbar()
          : (_selectedIndex == 2)
              ? addvideoappbar()
              : (_selectedIndex == 3)
                  ? playlistappbar()
                  : (_selectedIndex == 4)
                  ? profileappbar()
                  : "";
}

homeappbar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.purple.shade900),
    backgroundColor: Colors.white,
    title: Row(
      children: [
        Image.asset(
          'assets/image/logo.png',
          fit: BoxFit.contain,
          height: 30,
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "CAIvideo",
              style: TextStyle(color: Colors.purple.shade900),
            ),
          ),
        )
      ],
    ),
  );
}

trendingappbar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.purple.shade900),
    backgroundColor: Colors.white,
    title: Row(
      children: [
        Icon(Icons.bar_chart),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Trending",
              style: TextStyle(color: Colors.purple.shade900),
            ),
          ),
        )
      ],
    ),
  );
}

playlistappbar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.purple.shade900),
    backgroundColor: Colors.white,
    title: Row(
      children: [
        Icon(Icons.playlist_add),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Playlist",
              style: TextStyle(color: Colors.purple.shade900),
            ),
          ),
        )
      ],
    ),
  );
}

addvideoappbar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.purple.shade900),
    backgroundColor: Colors.white,
    title: Row(
      children: [
        Icon(Icons.add_a_photo),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Tambah Video",
              style: TextStyle(color: Colors.purple.shade900),
            ),
          ),
        )
      ],
    ),
  );
}

profileappbar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.purple.shade900),
    backgroundColor: Colors.white,
    title: Row(
      children: [
        Icon(Icons.person),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Profile",
              style: TextStyle(color: Colors.purple.shade900),
            ),
          ),
        )
      ],
    ),
  );
}
