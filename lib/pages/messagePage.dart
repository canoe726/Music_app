import 'package:flutter/material.dart';

class messagePage extends StatefulWidget {
  messagePage({Key key}) : super(key: key);

  @override
  _messagePageState createState() => _messagePageState();
}

class _messagePageState extends State<messagePage> {
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
          ),
        ],
      ),
    ));
  }
}
