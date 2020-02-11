import 'package:flutter/material.dart';
import 'package:music_app/components/textButton.dart';
import 'package:music_app/pages/homePage.dart';
import 'package:music_app/pages/musicListPage.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  int _selectedIndex = 0;
  final List<Widget> pages = [
    homePage(
      key: PageStorageKey('Page1'),
    ),
    musicListPage(
      key: PageStorageKey('Page2'),
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
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF34558b),
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            title: Text('MUSCI LIST'),
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

