import 'package:flutter/material.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:music_app/data/infoPageList.dart';
import 'package:music_app/data/userPlayList.dart';
import 'package:music_app/pages/donationDialog.dart';
import 'package:share/share.dart';

class PeopleMorePage extends StatefulWidget {
  final List<PeopleList> peopleList;
  PeopleMorePage({Key key, @required this.peopleList}) : super(key: key);

  @override
  _PeopleMorePageState createState() => _PeopleMorePageState();
}

class _PeopleMorePageState extends State<PeopleMorePage> {

  UserPlayList userPlayList;

  _PeopleMorePageState () {
    userPlayList = new UserPlayList("Reporter", "assets/userProfile1.jpg", "", "", "", "", "", Icons.favorite, Icons.play_circle_outline);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView.builder(
              itemCount: widget.peopleList.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: new InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "${widget.peopleList[index].date}",
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: globalColors.lightGrey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.0,
                                ),
                              ),
                              Expanded(child: Text("")),
                              IconButton(
                                icon: Icon(widget.peopleList[index].favorite),
                                color: globalColors.classicBlue,
                                onPressed: () {
                                  setState(() {
                                    if( widget.peopleList[index].favorite == Icons.favorite ) {
                                      widget.peopleList[index].favorite = Icons.favorite_border;
                                    } else {
                                      widget.peopleList[index].favorite = Icons.favorite;
                                    }
                                  });
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.monetization_on),
                                color: globalColors.classicBlue,
                                onPressed: () {
                                  Route route = MaterialPageRoute(builder: (context) => DonationDialog(userPlayList: userPlayList));
                                  Navigator.push(context, route);
                                },
                              ),
                              ShareButton(shareText: widget.peopleList[index].summary),
                            ],
                          ),
                          Image(
                            image: AssetImage("${widget.peopleList[index].coverImage}"),
                            width: 150,
                            height: 150,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${widget.peopleList[index].title}",
                            style: TextStyle(
                              fontFamily: 'Nanum',
                              color: globalColors.classicBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${widget.peopleList[index].summary}",
                            style: TextStyle(
                              fontFamily: 'Nanum',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                          SizedBox(height: 8),
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

class ShareButton extends StatelessWidget {
  final String shareText;
  ShareButton({Key key, @required this.shareText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.screen_share,
          color: globalColors.classicBlue,
        ),
        onPressed: () {
          final RenderBox box = context.findRenderObject();
          Share.share(shareText,
              subject: "Sound Cloud",
              sharePositionOrigin:
              box.localToGlobal(Offset.zero) &
              box.size);
        }
    );
  }
}