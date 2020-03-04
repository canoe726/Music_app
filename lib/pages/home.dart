import 'package:flutter/material.dart';
import 'package:music_app/components/textButton.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:music_app/pages/homePage.dart';
import 'package:music_app/pages/musicListPage.dart';
import 'package:music_app/pages/messagePage.dart';
import 'package:music_app/pages/musicInfoPage.dart';
import 'package:music_app/pages/profilePage.dart';
import 'package:music_app/pages/musicPlaySlideUpPanel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  final _homePage = GlobalKey<NavigatorState>();
  final _musicListPage = GlobalKey<NavigatorState>();
  final _messagePage = GlobalKey<NavigatorState>();
  final _musicInfoPage = GlobalKey<NavigatorState>();
  final _profilePage = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: globalColors.classicBlue,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          child: Icon(Icons.person),
                          radius: 40.0,
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
                                    color: globalColors.classicBlue,
                                    fontFamily: 'Nanum',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '님의 계정',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                    color: globalColors.lightGrey,
                                    fontFamily: 'Nanum',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'songs@gmail.com',
                              style: TextStyle(
                                color: globalColors.classicBlue,
                                fontFamily: 'Nanum',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              buttonName:'로그아웃',
                              onPressed: () {},
                              buttonTextStyle: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Nanum',
                                fontWeight: FontWeight.bold,
                                color: globalColors.classicBlue,
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
            ],
          ),
        ),
        body: IndexedStack(
          index: selectedIndex,
          children: <Widget>[
            MaterialApp(
            title: "HomePage Route",
              initialRoute: '/',
              routes: {
                '/' : (BuildContext context) => HomePage(),
              },
            ),
            MaterialApp(
              title: "MusicListPage Route",
              initialRoute: '/',
              routes: {
                '/' : (BuildContext context) => MusicListPage(),
              },
            ),
            MaterialApp(
              title: "MessagePage Route",
              initialRoute: '/',
              routes: {
                '/' : (BuildContext context) => MessagePage(),
              },
            ),
            MaterialApp(
              title: "MusicInfoPage Route",
              initialRoute: '/',
              routes: {
                '/' : (BuildContext context) => MusicInfoPage(),
              },
            ),
            MaterialApp(
              title: "ProfilePage Route",
              initialRoute: '/',
              routes: {
                '/' : (BuildContext context) => ProfilePage(),
              },
            ),
          ]
        ),
        bottomNavigationBar: createBottom(),
      );
  }

  final items = [
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
  ];

  // get Index from bottomNavigation Item
  void onItemTapped(int index, BuildContext context) {
    if( selectedIndex == index ) {
      switch (index) {
        case 0:
          _homePage.currentState.popUntil((route) => route.isFirst);
          break;
        case 1:
          _musicListPage.currentState.popUntil((route) => route.isFirst);
          break;
        case 2:
          _messagePage.currentState.popUntil((route) => route.isFirst);
          break;
        case 3:
          _musicInfoPage.currentState.popUntil((route) => route.isFirst);
          break;
        case 4:
          _profilePage.currentState.popUntil((route) => route.isFirst);
          break;
        default:
      }
    } else {
      if( mounted ) {
        setState(() {
          selectedIndex = index;
        });
      }
    }
  }

  Widget createBottom() {
    double sliderHeight = kBottomNavigationBarHeight;
    var padding = MediaQuery.of(context).padding;
    sliderHeight = MediaQuery.of(context).size.height - padding.top - padding.bottom - kBottomNavigationBarHeight;

    List<Widget> widgets = [];
    // widgets.add(musicPlaySliceUpPanel(sliderHeight));
    widgets.add(
      BottomNavigationBar(
        backgroundColor: globalColors.classicBlue,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.white,
        onTap: (index) => onItemTapped(index, context),
        items: items,
      ),
    );
    return Column(mainAxisSize: MainAxisSize.min, children: widgets);
  }
}

