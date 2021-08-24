import 'dart:convert';

import 'package:caivideo/page/home/addvideo/checkauth.dart';
import 'package:caivideo/page/home/homepage/home.dart';
import 'package:caivideo/page/home/playlist/playlistpage.dart';
import 'package:caivideo/page/home/trending/trendingHome.dart';
import 'package:caivideo/page/profile/profile.dart';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    Home(),
    // SiginHome(),
    TrandingHOme(),
    Homeaddvideo(),
    PlaylistPage(),
    SudahloginHOme()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.purple.shade900),
        backgroundColor: Colors.white,
        title: Text(
          _selectedIndex == 0
              ? "Home"
              : _selectedIndex == 1
                  ? "trending"
                  : _selectedIndex == 2
                      ? "add Video"
                      : _selectedIndex == 3
                          ? "Subscriber"
                          : _selectedIndex == 4
                              ? "Profile"
                              : "",
          style: TextStyle(color: Colors.purple.shade900),
        ),
      ),
      body: Container(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,

        backgroundColor: Colors.purple.shade900,

        type: BottomNavigationBarType
            .fixed, // This i// this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.bar_chart),
            title: new Text('trending'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.add_box_outlined),
            title: new Text('add video'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play_outlined),
              title: Text('playlist')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
