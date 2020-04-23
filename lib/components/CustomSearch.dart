import 'package:flutter/material.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:music_app/data/profileFormat.dart' as profileFormat;

class CustomSearchDelegate extends SearchDelegate {
  
  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Artist',
                  style: TextStyle(
                    fontFamily: 'Nanum',
                    color: globalColors.classicBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: globalColors.classicBlue,
            thickness: 1.5,
            height: 0.0,
          )
        ],
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
          body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Artist',
                    style: TextStyle(
                      fontFamily: 'Nanum',
                      color: globalColors.classicBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: globalColors.classicBlue,
              thickness: 1.5,
              height: 0.0,
            ),
            SuggestionList(
              query: query,
            ),
          ],
        ),
      ),
    );
  }
}

class SuggestionList extends StatefulWidget {
  final String query;
  SuggestionList({@required this.query});
  @override
  _SuggestionListState createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      padding: EdgeInsets.zero,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        children: setView(widget.query),
      ),
    );
  }

  List<Widget> setView(String query) {
    var userDatas = profileFormat.users;
    List<Widget> searchData = [];
    if (query.length > 0) {
      for (var i = 0; i < userDatas.length; i++) {
        if (userDatas[i].id.contains(query)) {
          searchData.add(Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context, i);
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(userDatas[i].imgLoc),
                    backgroundColor: Colors.transparent,
                    radius: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    userDatas[i].id,
                    style: TextStyle(
                        fontSize: 15.0, color: globalColors.classicBlue),
                  ),
                )
              ],
            ),
          ));
        }
      }
    }
    if (searchData.length == 0) {
      searchData.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(4.0, 16.0, 4.0, 16.0),
          child: Text(
            "일치하는 결과가 없습니다.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15.0),
          ),
        ),
      );
    }
    return searchData;
  }
}