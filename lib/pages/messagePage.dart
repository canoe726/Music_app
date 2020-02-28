import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  MessagePage({Key key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<String> dialogStr = ["대화방 나가기", "대화방 알림끄기", "대화방 안나가기", "대화방 알림켜기"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0.0, 0.0),
            child: Text(
              "USER",
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF34558b),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 5.0),
            child: Divider(
              color: Colors.grey,
              height: 5,
              thickness: 3,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/beenzinoProfile.jpg'),
              backgroundColor: Colors.transparent,
              radius: 30,
            ),
            title: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '빈지노',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF34558b),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 3, 0, 0),
                    child: Icon(
                      Icons.notifications,
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
                '안녕하세요',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/beenzinoProfile.jpg'),
              backgroundColor: Colors.transparent,
              radius: 30,
            ),
            title: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '빈지노2',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF34558b),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 3, 0, 0),
                    child: Icon(
                      Icons.notifications_off,
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
                '안녕못해요',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            onLongPress: () {
              _showDialog();
            },
          ),
        ],
      ),
    ));
  }

  void _showDialog() {
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
                      "길게 눌러보기",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: dialogStr.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 8.0),
                              child: Text(dialogStr[index]),
                            );
                          }),
                    )
                  ]),
            ),
          );
        });
  }
}
