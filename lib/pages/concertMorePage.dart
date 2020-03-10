import 'package:flutter/material.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:music_app/data/infoPageList.dart';

class ConcertMorePage extends StatefulWidget {
  final List<ConcertList> concertList;
  ConcertMorePage({Key key, @required this.concertList}) : super(key: key);

  @override
  _ConcertMorePageState createState() => _ConcertMorePageState();
}

class _ConcertMorePageState extends State<ConcertMorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView.builder(
              itemCount: widget.concertList.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: new InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage("${widget.concertList[index].coverImage}"),
                            width: 150,
                            height: 150,
                          ),
                          SizedBox(height: 10),
                          Column(
                            children: <Widget>[
                              Text(
                                "${widget.concertList[index].title}",
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: globalColors.classicBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "${widget.concertList[index].summary}",
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "${widget.concertList[index].place}",
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "${widget.concertList[index].date}",
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
