import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:music_app/components/textButton.dart';
import 'package:music_app/data/infoPageList.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:music_app/pages/peopleMorePage.dart';
import 'package:music_app/pages/concertMorePage.dart';
import 'package:music_app/pages/festivalMorePage.dart';
import 'package:music_app/pages/peopleInfoPage.dart';

class MusicInfoPage extends StatefulWidget {
  MusicInfoPage({Key key}) : super(key: key);

  @override
  _MusicInfoPageState createState() => _MusicInfoPageState();
}

class _MusicInfoPageState extends State<MusicInfoPage> {
  List festivalListDotted = [];

  _MusicInfoPageState() {
    // init festivalDotted
    for(int i=0; i<festivalList.length; i++) {
      festivalListDotted.add(i);
    }
  }

  int _current = 0;

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
                    items: festivalList.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Card(
                              elevation: 5.0,
                              child: Center(
                                child: ImageButton(
                                  children: <Widget>[],
                                  width: double.infinity,
                                  height: 240,
                                  pressedImage: Image.asset('${i.coverImage}'),
                                  unpressedImage: Image.asset('${i.coverImage}'),
                                  onTap: () {
                                    Route route = MaterialPageRoute(builder: (context) => FestivalMorePage(festivalItem: i));
                                    Navigator.push(context, route);
                                  },
                                ),
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
                      children: festivalListDotted.map((i) {
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
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '인물',
                      style: TextStyle(
                        fontFamily: 'Nanum',
                        color: globalColors.classicBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      '이번달의 인물들을 만나보세요',
                      style: TextStyle(
                        fontFamily: 'Nanum',
                        color: const Color(0xFFBEBEBE),
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                Expanded(child:Text(''),),
                TextButton(
                  buttonName:'더보기',
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => PeopleMorePage(peopleList: peopleList));
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
            SizedBox(height: 5),
            Center(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),]
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 33,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 4, 8),
                          child: Column(
                            children: <Widget>[
                              ImageButton(
                                children: <Widget>[],
                                height: 125,
                                pressedImage: Image.asset('${peopleList[0].coverImage}'),
                                unpressedImage: Image.asset('${peopleList[0].coverImage}'),
                                onTap: () {
                                  Route route = MaterialPageRoute(builder: (context) => PeopleInfoPage(peopleItem: peopleList[0]));
                                  Navigator.push(context, route);
                                },
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${peopleList[0].title}',
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 33,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
                          child: Column(
                            children: <Widget>[
                              ImageButton(
                                children: <Widget>[],
                                height: 125,
                                pressedImage: Image.asset('${peopleList[1].coverImage}'),
                                unpressedImage: Image.asset('${peopleList[1].coverImage}'),
                                onTap: () {
                                  Route route = MaterialPageRoute(builder: (context) => PeopleInfoPage(peopleItem: peopleList[1]));
                                  Navigator.push(context, route);
                                },
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${peopleList[1].title}',
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 33,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
                          child: Column(
                            children: <Widget>[
                              ImageButton(
                                children: <Widget>[],
                                height: 125,
                                pressedImage: Image.asset('${peopleList[2].coverImage}'),
                                unpressedImage: Image.asset('${peopleList[2].coverImage}'),
                                onTap: () {
                                  Route route = MaterialPageRoute(builder: (context) => PeopleInfoPage(peopleItem: peopleList[2]));
                                  Navigator.push(context, route);
                                },
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${peopleList[2].title}',
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '공연',
                      style: TextStyle(
                        fontFamily: 'Nanum',
                        color: globalColors.classicBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      '화제의 인물들의 공연에 참여하세요',
                      style: TextStyle(
                        fontFamily: 'Nanum',
                        color: globalColors.lightGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                Expanded(child:Text(''),),
                TextButton(
                  buttonName:'더보기',
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => ConcertMorePage(concertList: concertList));
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
            SizedBox(height: 5),
            Center(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),]
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 33,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 4, 8),
                          child: Column(
                            children: <Widget>[
                              ImageButton(
                                children: <Widget>[],
                                height: 125,
                                pressedImage: Image.asset('${concertList[0].coverImage}'),
                                unpressedImage: Image.asset('${concertList[0].coverImage}'),
                                onTap: () {},
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${concertList[0].title}',
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 33,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
                          child: Column(
                            children: <Widget>[
                              ImageButton(
                                children: <Widget>[],
                                height: 125,
                                pressedImage: Image.asset('${concertList[1].coverImage}'),
                                unpressedImage: Image.asset('${concertList[1].coverImage}'),
                                onTap: () {},
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${concertList[1].title}',
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 33,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
                          child: Column(
                            children: <Widget>[
                              ImageButton(
                                children: <Widget>[],
                                height: 125,
                                pressedImage: Image.asset('${concertList[2].coverImage}'),
                                unpressedImage: Image.asset('${concertList[2].coverImage}'),
                                onTap: () {},
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${concertList[2].title}',
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
