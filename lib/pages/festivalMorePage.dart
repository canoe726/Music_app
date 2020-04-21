import 'package:flutter/material.dart';
import 'package:music_app/data/infoPageList.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;

class FestivalMorePage extends StatelessWidget {

  FestivalList festivalItem;
  FestivalMorePage({Key key, @required this.festivalItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text(
                festivalItem.title,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Nanum',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
              child: Text(
                festivalItem.date,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: 'Nanum',
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                        "찜하기",
                        style: TextStyle(
                        fontFamily: 'Nanum',
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                    color: globalColors.classicBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "예매하기",
                      style: TextStyle(
                        fontFamily: 'Nanum',
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                    color: globalColors.classicBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(festivalItem.coverImage),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                festivalItem.summary,
                style: TextStyle(
                  fontFamily: 'Nanum',
                  color: Colors.black,
                  height: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
