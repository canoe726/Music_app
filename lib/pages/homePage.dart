import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:music_app/components/textButton.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:music_app/data/profileFormat.dart' as profileFormat;
import 'package:music_app/pages/profilePage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  List<Map<String, String>> carouselList = [
    {
      "avatar": "assets/beenzinoProfile.jpg",
      "title_name": "빈지노",
      "title_content": "님이 게시물을 올렸습니다.",
      "album_title": "Boogie on & on",
      "album_cover": "assets/beenzinoAlbum.jpg"
    },
    {
      "avatar": "assets/changmoProfile.jpg",
      "title_name": "창모",
      "title_content": "님이 게시물을 올렸습니다.",
      "album_title": "Boyhood",
      "album_cover": "assets/changmoAlbum.jpg"
    },
    {
      "avatar": "assets/beenzinoProfile.jpg",
      "title_name": "빈지노",
      "title_content": "님이 게시물을 올렸습니다.",
      "album_title": "Boogie on & on",
      "album_cover": "assets/beenzinoAlbum.jpg"
    },
    {
      "avatar": "assets/changmoProfile.jpg",
      "title_name": "창모",
      "title_content": "님이 게시물을 올렸습니다.",
      "album_title": "Boyhood",
      "album_cover": "assets/changmoAlbum.jpg"
    },
  ];

  List dotted = [0, 1, 2, 3];

  List<profileFormat.User> albumInfo = profileFormat.users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: Stack(children: [
                CarouselSlider(
                  height: 250.0,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                  items: carouselList.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Card(
                            elevation: 5.0,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('${i["avatar"]}'),
                                    backgroundColor: Colors.transparent,
                                  ),
                                  title: Text('${i["title_name"]}' +
                                      " " +
                                      '${i["title_content"]}'),
                                ),
                                Text(
                                  '${i["album_title"]}',
                                  style: TextStyle(
                                      fontSize: 15.0, fontFamily: 'Nanum'),
                                ),
                                SizedBox(height: 5.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      child: ImageButton(
                                        children: <Widget>[],
                                        width: 130,
                                        height: 130,
                                        paddingTop: 5,
                                        pressedImage: Image.asset(
                                          '${i["album_cover"]}',
                                        ),
                                        unpressedImage:
                                            Image.asset('${i["album_cover"]}'),
                                        onTap: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15.0),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                Positioned(
                    bottom: 5.0,
                    left: 0.0,
                    right: 0.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: dotted.map((i) {
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == i
                                  ? Color.fromRGBO(0, 0, 0, 0.9)
                                  : Color.fromRGBO(0, 0, 0, 0.4)),
                        );
                      }).toList(),
                    ))
              ])),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  SizedBox(width: 5),
                  Text(
                    'Most Liked Today',
                    style: TextStyle(
                      fontFamily: 'Nanum',
                      color: const Color(0xFF34558b),
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  Expanded(
                    child: Text(''),
                  ),
                  TextButton(
                    buttonName: '더보기',
                    onPressed: () {},
                    buttonTextStyle: TextStyle(
                      fontFamily: 'Nanum',
                      color: const Color(0xFF34558b),
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GridView.builder(
                        physics: new NeverScrollableScrollPhysics(),
                        itemCount: albumInfo.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                              onTap: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => ProfilePage(
                                        userInfo:albumInfo[index]));
                                Navigator.push(context, route);
                              },
                              child: Image.asset(albumInfo[index].imgLoc));
                        },
                      ),
                    )),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  SizedBox(width: 5),
                  Text(
                    'Most Reposted Today',
                    style: TextStyle(
                      fontFamily: 'Nanum',
                      color: const Color(0xFF34558b),
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  Expanded(
                    child: Text(''),
                  ),
                  TextButton(
                    buttonName: '더보기',
                    onPressed: () {},
                    buttonTextStyle: TextStyle(
                      fontFamily: 'Nanum',
                      color: const Color(0xFF34558b),
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GridView.builder(
                        physics: new NeverScrollableScrollPhysics(),
                        itemCount: albumInfo.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                              onTap: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => ProfilePage(
                                        userInfo:albumInfo[9-index]));
                                Navigator.push(context, route);
                              },
                              child: Image.asset(albumInfo[9 - index].imgLoc));
                        },
                      ),
                    )),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
