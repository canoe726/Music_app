import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music_app/components/textButton.dart';
import 'package:music_app/pages/homePage.dart';
import 'package:music_app/pages/musicListPage.dart';
import 'package:music_app/pages/messagePage.dart';
import 'package:music_app/pages/musicInfoPage.dart';
import 'package:music_app/pages/profilePage.dart';
import 'package:music_app/data/profileFormat.dart' as profileFormat;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final List<Widget> pages = [
    HomePage(
      key: PageStorageKey('homePage'),
    ),
    MusicListPage(
      key: PageStorageKey('musicListPage'),
    ),
    MessagePage(
      key: PageStorageKey('messagePage'),
    ),
    MusicInfoPage(
      key: PageStorageKey('musicInfoPage'),
    ),
    ProfilePage(
      key: PageStorageKey('profilePage'),
      userInfo:  profileFormat.User(
      id: 'beenzino_',
      name: '빈지노',
      songName: 'Aqua Man',
      uploadDate: "2012년 07월 03일",
      imgLoc: 'assets/beenzinoAlbum.jpg',
      comment: '아꾸아매엔엔'),
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF34558b),
        centerTitle: true,
        elevation: 0.0,
        title: TextButton(
          buttonName: 'SOUND CLOUD',
          onPressed: () {},
          buttonTextStyle: TextStyle(
            fontFamily: 'Futura',
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(child: Text(''),),
                      IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(Icons.person),
                        radius: 30.0,
                      ),
                      SizedBox(width: 20.0),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                '김영배 ',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: const Color(0xFF34558b),
                                  fontFamily: 'Nanum',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '님의 계정',
                                style: TextStyle(
                                    fontSize: 15.0,
                                  color: Colors.grey[600],
                                  fontFamily: 'Nanum',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'songs@gmail.com',
                            style: TextStyle(
                              color: const Color(0xFF34558b),
                              fontFamily: 'Nanum',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                  Icons.date_range,
                  color: Colors.black,
              ),
              title: Text(
                'TIMELINE',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Nanum',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.queue_music,
                color: Colors.black,
              ),
              title: Text(
                'PLAYLIST',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Nanum',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: Colors.black,
              ),
              title: Text(
                'MESSAGE',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Nanum',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                color: Colors.black,
              ),
              title: Text(
                'HISTORY',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Nanum',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.notification_important,
                color: Colors.black,
              ),
              title: Text(
                'NOTICE',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Nanum',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.black,
              ),
              title: Text(
                'CONTACT',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Nanum',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 99.0),
            Container(
              color: const Color(0xFF34558b),
              child: ListTile(
                title: Center(
                  child: Text(
                    '로그아웃',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Nanum',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF34558b),
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.white,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            title: Text('MUSIC LIST'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('MESSAGE'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('MUSIC INFO'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('PROFILE'),
          ),
        ],
      ),
      body: PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

