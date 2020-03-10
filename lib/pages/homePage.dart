import 'package:flutter/material.dart';
import 'package:music_app/components/textButton.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:music_app/pages/homeMorePage.dart';
import 'package:music_app/data/homeCarouselList.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:music_app/data/profileFormat.dart' as profileFormat;
import 'package:music_app/pages/profilePage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  List<HomeCarouselList> homeCarouselList = new List<HomeCarouselList>();
  List carouselDotted = [];

  _HomePageState() {
    // init HomeCarouselList
    HomeCarouselList carouselItem = new HomeCarouselList("assets/beenzinoProfile.jpg", "빈지노", "님이 게시물을 올렸습니다.", "Boogie on & on", "assets/beenzinoAlbum.jpg");
    homeCarouselList.add(carouselItem);

    carouselItem = new HomeCarouselList("assets/changmoProfile.jpg", "창모", "님이 게시물을 올렸습니다.", "Boyhood", "assets/changmoAlbum.jpg");
    homeCarouselList.add(carouselItem);

    carouselItem = new HomeCarouselList("assets/batsagongImage.jpg", "뱃사공", "님이 게시물을 올렸습니다.", "기린", "assets/gridSample3.png");
    homeCarouselList.add(carouselItem);

    carouselItem = new HomeCarouselList("assets/kidImage.jpg", "키드밀리", "님 게시물을 올렸습니다.", "L I F E", "assets/gridSample2.png");
    homeCarouselList.add(carouselItem);

    // init dotted
    for(var i=0; i<homeCarouselList.length; i++) {
      carouselDotted.add(i);
    }
  }

  List<profileFormat.User> albumInfo = profileFormat.users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
                child: Stack(
                    children: [
                      CarouselSlider(
                        height: 250.0,
                        onPageChanged: (index) {
                          setState(() {
                            _current = index;
                          });
                        },
                        items: homeCarouselList.map((i) {
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
                                          backgroundImage: AssetImage('${i.avatar}'),
                                          backgroundColor: Colors.transparent,
                                        ),
                                        title: Text('${i.artistName}' + " " + '${i.content}'),
                                      ),
                                      Text(
                                        '${i.albumTitle}',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontFamily: 'Nanum'
                                        ),
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
                                              pressedImage: Image.asset('${i.albumCover}'),
                                              unpressedImage: Image.asset('${i.albumCover}'),
                                              onTap: () {},
                                            ),
                                          ),
                                        ]
                                      ),
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
                            children: carouselDotted.map((i) {
                              return Container(
                                width: 8.0,
                                height: 8.0,
                                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _current == i ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4)
                                ),
                              );
                            }).toList(),
                          )
                      )
                    ]
                )
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                SizedBox(width: 5),
                Text(
                  'Most Liked Today',
                  style: TextStyle(
                    fontFamily: 'Nanum',
                    color: globalColors.classicBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                Expanded(child:Text(''),),
                TextButton(
                  buttonName:'더보기',
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => HomeMorePage(homeCarouselList: homeCarouselList));
                    Navigator.push(context, route);
                  },
                  buttonTextStyle: TextStyle(
                    fontFamily: 'Nanum',
                    color: globalColors.classicBlue,
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
                        mainAxisSpacing: 4.0
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            Route route = MaterialPageRoute(builder: (context) => ProfilePage(userInfo:albumInfo[index]));
                            Navigator.push(context, route);
                          },
                          child: Image.asset(albumInfo[index].imgLoc)
                      );
                    },
                  ),
                )
              ),
             ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                SizedBox(width: 5),
                Text(
                  'Most Reposted Today',
                  style: TextStyle(
                    fontFamily: 'Nanum',
                    color: globalColors.classicBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                Expanded(child:Text(''),),
                TextButton(
                  buttonName:'더보기',
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => HomeMorePage(homeCarouselList: homeCarouselList));
                    Navigator.push(context, route);
                  },
                  buttonTextStyle: TextStyle(
                    fontFamily: 'Nanum',
                    color: globalColors.classicBlue,
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
                          Route route = MaterialPageRoute(builder: (context) => ProfilePage(userInfo:albumInfo[9-index]));
                          Navigator.push(context, route);
                        },
                        child: Image.asset(albumInfo[9 - index].imgLoc)
                      );
                    },
                  ),
                )
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
