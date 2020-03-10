import 'package:flutter/material.dart';
import 'package:music_app/data/commentList.dart';

class CommentPage extends StatefulWidget {
  final String musicianName;
  CommentPage({Key key, @required this.musicianName}) : super(key: key);

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  List<CommentList> commentList = new List<CommentList>();

  _CommentPageState() {
    CommentList item = new CommentList(
        "assets/userProfile1.jpg", "kim", "노래 좋아요");
    commentList.add(item);

    item = new CommentList("assets/userProfile2.jpeg", "lee", "띵곡");
    commentList.add(item);

    item = new CommentList("assets/userProfile3.jpg", "park", "또 앨범 내주세요");
    commentList.add(item);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: commentList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(commentList[index].avatar),
                backgroundColor: Colors.transparent,
              ),
              title: Text(
                "${commentList[index].userName}"
              ),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                    "${commentList[index].comment}"
                ),
              ),
            );
          }
      ),
    );
  }
}
