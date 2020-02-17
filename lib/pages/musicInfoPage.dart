import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:music_app/components/textButton.dart';

class MusicInfoPage extends StatefulWidget {
  MusicInfoPage({Key key}) : super(key: key);

  @override
  _MusicInfoPageState createState() => _MusicInfoPageState();
}

class _MusicInfoPageState extends State<MusicInfoPage> {

  int _current = 0;

  List<Map<String, String>> festivalList = [
    {"coverImage": "assets/Poster1.png"},
    {"coverImage": "assets/Poster2.jpg"},
    {"coverImage": "assets/Poster3.jpg"},
  ];

  List<Map<String, String>> peopleList = [
    {"coverImage":"assets/batsagongImage.jpg", "name":"뱃사공"},
    {"coverImage":"assets/kidImage.jpg", "name":"키드밀리"},
    {"coverImage":"assets/wuImage.jpg", "name":"우원재"},
  ];

  List<Map<String, String>> concertList = [
    {"coverImage":"assets/indiePoster.jpg", "name":"인디 나이트"},
    {"coverImage":"assets/jazzPoster.jpg", "name":"재즈 여행"},
    {"coverImage":"assets/urbanPoster.png", "name":"어반 음악"},
  ];

  List festivalList_dotted = [0,1,2];
  List peopleList_dotted = [0,1,2];
  List concertList_dotted = [0,1,2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                                        width: 230,
                                        height: 230,
                                        pressedImage: Image.asset(
                                          '${i["coverImage"]}',
                                        ),
                                        unpressedImage: Image.asset('${i["coverImage"]}'),
                                        onTap: () {},
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
                              children: festivalList_dotted.map((i) {
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
                          color: const Color(0xFF34558b),
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
              SizedBox(height: 5),
              Center(
                child: Container(
                  width: 390,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),]
                  ),
                  child: CarouselSlider(
                    height: 200.0,
                    items: peopleList.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ImageButton(
                                children: <Widget>[],
                                width: 160,
                                height: 160,
                                paddingTop: 5,
                                pressedImage: Image.asset(
                                  '${i["coverImage"]}',
                                ),
                                unpressedImage: Image.asset('${i["coverImage"]}'),
                                onTap: () {},
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${i["name"]}',
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
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
                          color: const Color(0xFF34558b),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        '화제의 인물들의 공연에 참여하세요',
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
              SizedBox(height: 5),
              Center(
                child: Container(
                  width: 390,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),]
                  ),
                  child: CarouselSlider(
                    height: 200.0,
                    items: concertList.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ImageButton(
                                children: <Widget>[],
                                width: 160,
                                height: 160,
                                paddingTop: 5,
                                pressedImage: Image.asset(
                                  '${i["coverImage"]}',
                                ),
                                unpressedImage: Image.asset('${i["coverImage"]}'),
                                onTap: () {},
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${i["name"]}',
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
