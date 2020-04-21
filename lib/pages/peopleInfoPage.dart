import 'package:flutter/material.dart';
import 'package:music_app/data/infoPageList.dart';
import 'package:music_app/components/textButton.dart';

class PeopleInfoPage extends StatelessWidget {

  PeopleList peopleItem;
  PeopleInfoPage({Key key, @required this.peopleItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(
                  height: 500,
              ),
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(peopleItem.coverImage),
                    fit: BoxFit.cover,
                  ),
                ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 10.0,
                    top: 5.0,
                    child: Container(
                      color: Colors.white60,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 4),
                        child: Text(
                          peopleItem.title + " - " + peopleItem.summary,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Nanum',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10.0,
                    bottom: 5.0,
                    child: Container(
                      color: Colors.white60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            peopleItem.date + " 업데이트",
                            maxLines: 2,
                            style: TextStyle(
                              fontFamily: 'Nanum',
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10,),
                          TextButton(
                            onPressed: () {},
                            buttonName:"좋아요",
                            buttonTextStyle: TextStyle(
                              fontFamily: 'Nanum',
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10,),
                          TextButton(
                            onPressed: () {},
                            buttonName:"공유하기",
                            buttonTextStyle: TextStyle(
                              fontFamily: 'Nanum',
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  peopleItem.content,
                  style: TextStyle(
                    fontFamily: 'Nanum',
                    color: Colors.black,
                    height: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
