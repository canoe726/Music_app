import 'package:flutter/material.dart';
import 'package:music_app/data/profileFormat.dart';

class ProfilePage extends StatefulWidget {
  final User userInfo;
  ProfilePage({Key key, @required this.userInfo}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(widget.userInfo.imgLoc),
                  backgroundColor: Colors.transparent,
                  radius: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 4.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              widget.userInfo.name,
                              style: TextStyle(
                                fontSize: 20,
                                color: const Color(0xFF34558b),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(
                                widget.userInfo.id,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          "PlayList",
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color(0xFF888888),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Text('')),
                ButtonTheme(
                  minWidth: 80.0,
                  height: 30.0,
                  child: FlatButton(
                    color: const Color(0xFF34558b),
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    splashColor: Colors.blueAccent,
                    onPressed: () {},
                    child: Text(
                      "내 계정",
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
              ),
              Divider(),
              Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 0.0, 30.0, 0.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '129',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF34558b),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Text(
                        'Followers',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color(0xFF555555),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0.0, 40.0, 0.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '150',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFF34558b),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Text(
                        'Followings',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color(0xFF555555),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
              ),
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              widget.userInfo.songName,
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xFF34558b),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                widget.userInfo.uploadDate,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: const Color(0xFF555555),
                                ),
                              ),
                            ),
                            Expanded(child: Text('')),
                            IconButton(
                                icon: Icon(
                                  Icons.screen_share,
                                  color: const Color(0xFF34558b),
                                ),
                                onPressed: null)
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 15.0),
                          child: Container(
                            constraints: BoxConstraints.expand(height: 200.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage(widget.userInfo.imgLoc),
                                    fit: BoxFit.cover)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  0.0, 0.0, 30.0, 30.0),
                              child: IconButton(
                                  icon: Icon(
                                    Icons.play_circle_outline,
                                    size: 60,
                                    color: const Color(0xFFffffff),
                                  ),
                                  onPressed: null),
                            ),
                          ),
                        ),
                        Text(
                          widget.userInfo.comment,
                          style: TextStyle(fontSize: 14.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SizedBox(
                                    height: 20.0,
                                    width: 20.0,
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.favorite_border,
                                          color: const Color(0xFF34558b),
                                        ),
                                        onPressed: null)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SizedBox(
                                    height: 20.0,
                                    width: 20.0,
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.comment,
                                          color: const Color(0xFF34558b),
                                        ),
                                        onPressed: null)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
              )
            ],
          ),
        ));
  }
}
