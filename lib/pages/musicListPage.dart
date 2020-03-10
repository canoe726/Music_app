import 'package:flutter/material.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:music_app/components/slideLeftRoute.dart';
import 'package:music_app/data/userPlayList.dart';
import 'package:music_app/pages/commentPage.dart';
import 'package:music_app/pages/donationDialog.dart';

class MusicListPage extends StatefulWidget {
  MusicListPage({Key key}) : super(key: key);

  @override
  _MusicListPageState createState() => _MusicListPageState();
}

class _MusicListPageState extends State<MusicListPage> {

  String userName;

  List<UserPlayList> userPlayList = new List<UserPlayList>();

  _MusicListPageState() {
    userName = "Song";

    // init userPlayList
    UserPlayList item = new UserPlayList('beenzino', 'assets/beenzinoProfile.jpg', 'Boggie on & on', 'assets/beenzinoAlbum.jpg', '이 밤이 와도 이 밤이 가도 I`m always awake', '2012년 7월 3일', Icons.favorite_border);
    userPlayList.add(item);

    item = new UserPlayList('changmo', 'assets/changmoProfile.jpg', 'METEOR', 'assets/changmoAlbum.jpg', '“정말 스타 되고 싶어 그럴려면 가서 만나면 돼 악마?”', '2019년 11월 29일', Icons.favorite_border);
    userPlayList.add(item);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.builder(
            itemCount: userPlayList.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(userPlayList[index].uploadDate),
                background: Container(
                  alignment: AlignmentDirectional.centerEnd,
                  color: Colors.red,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                onDismissed: (direction) {
                  setState(() {
                    userPlayList.removeAt(index);
                  });
                },
                direction: DismissDirection.endToStart,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage(userPlayList[index].avatar),
                              backgroundColor: Colors.transparent,
                            ),
                            Expanded(child: Text(""),),
                            Text(
                              userPlayList[index].songTitle,
                              style: TextStyle(
                                fontFamily: 'Nanum',
                                color: globalColors.classicBlue,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),
                            ),
                            Expanded(child: Text(""),),
                            IconButton(
                              icon: Icon(Icons.screen_share),
                              color: globalColors.classicBlue,
                              onPressed: () {},
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(userPlayList[index].songCover),
                              ),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.play_circle_outline,
                                size: 60,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          userPlayList[index].songComment,
                          style: TextStyle(
                            fontFamily: 'Nanum',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'UPLOAD',
                                  style: TextStyle(
                                    fontFamily: 'Nanum',
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                  ),
                                ),
                                Text(
                                  userPlayList[index].uploadDate,
                                  style: TextStyle(
                                    fontFamily: 'Nanum',
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(child: Text(""),),
                            IconButton(
                              icon: Icon(userPlayList[index].favorite),
                              color: globalColors.classicBlue,
                              onPressed: () {
                                setState(() {
                                  if( userPlayList[index].favorite == Icons.favorite ) {
                                    userPlayList[index].favorite = Icons.favorite_border;
                                  } else {
                                    userPlayList[index].favorite = Icons.favorite;
                                  }
                                });
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.message),
                              color: globalColors.classicBlue,
                              onPressed: () {
                                Navigator.push(context, SlideLeftRoute(page: CommentPage(musicianName: userPlayList[index].musicianName)));
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.monetization_on),
                              color: globalColors.classicBlue,
                              onPressed: () {
                                Route route = MaterialPageRoute(builder: (context) => DonationDialog(userPlayList: userPlayList[index]));
                                Navigator.push(context, route);
                              },
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
    );
  }


}
