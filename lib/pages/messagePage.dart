import 'package:flutter/material.dart';
import 'package:music_app/data/chats.dart';
import 'package:music_app/pages/chatPage.dart';
import 'package:music_app/data/chatFormat.dart' as chatFormat;

class MessagePage extends StatefulWidget {
  
  MessagePage({Key key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  // List<String> dialogStr = ["대화방 나가기", "대화방 알림끄기", "대화방 안나가기", "대화방 알림켜기"];
  List<chatFormat.User> msgInfo = chatFormat.users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
          child: ListView.builder(
              itemCount: msgInfo.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(msgInfo[index].imgLoc),
                    backgroundColor: Colors.transparent,
                    radius: 30,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          msgInfo[index].name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF34558b),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 3, 0, 0),
                          child: Icon(
                            msgInfo[index].notify
                                ? Icons.notifications
                                : Icons.notifications_off,
                            size: 15,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      msgInfo[index].lastTalk,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => ChatPage(
                          chatRoom: ChatRoom(
                            mId: "me",
                            withId: index,
                          ),
                        ));
                    Navigator.push(context, route);
                  },
                  onLongPress: () {
                    _showDialog(index);
                  },
                );
              })),
    ));
  }

  void _showDialog(userIdx) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            content: Container(
              padding: EdgeInsets.all(0.0),
              width: double.maxFinite,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "대화방 설정",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  8.0, 12.0, 8.0, 8.0),
                              child: index == 0
                                  ? InkWell(
                                      child: msgInfo[userIdx].notify
                                          ? Text("대화방 알림끄기")
                                          : Text("대화방 알림켜기"),
                                      onTap: () {
                                        setState(() {
                                          msgInfo[userIdx].notify =
                                              !(msgInfo[userIdx].notify);
                                          Navigator.pop(context);
                                        });
                                      },
                                    )
                                  : InkWell(
                                    child: Text("대화방 나가기"),
                                     onTap: () {
                                        setState(() {
                                          msgInfo.removeAt(userIdx);
                                          Navigator.pop(context);
                                        });
                                      },
                                    ),
                            );
                          }),
                    )
                  ]),
            ),
          );
        });
  }
}
