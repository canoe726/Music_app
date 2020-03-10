import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:music_app/data/userPlayList.dart';

class DonationDialog extends StatefulWidget {
  final UserPlayList userPlayList;
  DonationDialog({Key key, @required this.userPlayList}) : super(key: key);

  @override
  _DonationDialogState createState() => _DonationDialogState();
}

class _DonationDialogState extends State<DonationDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.userPlayList.avatar),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(width: 10),
                    Text(
                      widget.userPlayList.musicianName,
                      style: TextStyle(
                        color: globalColors.classicBlue,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      " 님에게 후원하기",
                      style: TextStyle(
                        color: globalColors.lightGrey,
                        fontSize: 15,
                      ),
                    ),
                    Expanded(child: Text("")),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '후원할 금액을 입력하세요 (원)'
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(width: 10),
                      Text(
                          "계좌선택"
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Comment",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    maxLength: 100,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '후원 메시지를 입력하세요'
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    textColor: Theme.of(context).primaryColor,
                    child: Text('후원하기'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
