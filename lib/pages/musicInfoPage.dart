import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:music_app/components/textButton.dart';
import 'package:music_app/data/infoPageList.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:music_app/pages/peopleMorePage.dart';
import 'package:music_app/pages/concertMorePage.dart';

class MusicInfoPage extends StatefulWidget {
  MusicInfoPage({Key key}) : super(key: key);

  @override
  _MusicInfoPageState createState() => _MusicInfoPageState();
}

class _MusicInfoPageState extends State<MusicInfoPage> {

  List<Map<String, String>> festivalList;

  List<PeopleList> peopleList = new List<PeopleList>();
  List<ConcertList> concertList = new List<ConcertList>();

  List festivalListDotted = [];

  _MusicInfoPageState() {

    festivalList = [
      {"coverImage": "assets/Poster1.png"},
      {"coverImage": "assets/Poster2.jpg"},
      {"coverImage": "assets/Poster3.jpg"},
    ];

    // init PeopleList
    PeopleList peopleItem = new PeopleList("assets/batsagongImage.jpg", "뱃사공", "잘 돼야 돼 탕아", "래퍼 대부분이 성공을 위해 ‘쇼미더머니’란 힙합 카스트 제도 속으로 투신한 가운데서도 뚝심 있는 움직임은 존재한다. 기형적인 시스템이 지배하는 한국힙합 씬에서 여전히 멋과 낭만을 노래하는 크루, 리짓군즈(Legit Goons)는 대표적이다.", "2020년 2월 24일");
    peopleList.add(peopleItem);

    peopleItem = new PeopleList("assets/kidImage.jpg", "키드밀리", "AI, THE PLAYLIST", "더 각 잡고 만든 앨범이 [AI, THE PLAYLIST]이라면, 곧 나오는 EP 앨범은 이제 거기서 작업하다 만 곡들과, 새로 작업한 곡을 섞어서 내는 거에요. 제가 준비하고 있는 ‘nondisclothes’라는 브랜드 이미지에 맞는 컨셉으로 발매하는 앨범일 거 같아요.", "2020년 1월 15일");
    peopleList.add(peopleItem);

    peopleItem = new PeopleList("assets/wuImage.jpg", "우원재", "자유롭게 생각하며", "가청 주파수를 뜻하는 오디오 프리퀀시의 약어에요. 우리는 20부터 2만 헤르츠까지밖에 못 듣거든요. 그 범위 안에서만 듣고 그게 전부인 줄 알죠. 그게 인간이고. 또 특히 한국이란 곳은 A부터 F라는 범위 안에서만 등급이 매겨지잖아요. 생각보다 우리 인간은 선입견과 어떤 정해진 것에 반응하며 산다는 걸 표현하고 싶었어요.", "2019년 12월 28일");
    peopleList.add(peopleItem);

    // init ConcertList
    ConcertList concertItem = new ConcertList("assets/indiePoster.jpg", "인디 나이트", "인디 음반 발매 기념", "예술의전당 콘서트홀", "2020-05-13");
    concertList.add(concertItem);

    concertItem = new ConcertList("assets/jazzPoster.jpg", "재즈 여행", "재즈 음반 발매 기념", "예술의전당 콘서트홀", "2020-03-07");
    concertList.add(concertItem);

    concertItem = new ConcertList("assets/urbanPoster.png", "어반 음악", "어반 음반 발매 기념", "예술의전당 콘서트홀", "2020-01-25");
    concertList.add(concertItem);

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
                                      pressedImage: Image.asset('${i["coverImage"]}'),
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
                                onTap: () {},
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
                                onTap: () {},
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
                                onTap: () {},
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
