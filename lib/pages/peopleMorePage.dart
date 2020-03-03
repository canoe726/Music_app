import 'package:flutter/material.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:music_app/data/infoPageList.dart';

class PeopleMorePage extends StatelessWidget {
  PeopleMorePage({this.peopleList});
  final List<PeopleList> peopleList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView.builder(
              itemCount: peopleList.length,
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
                                "${peopleList[index].date}",
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  color: globalColors.lightGrey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.0,
                                ),
                              ),
                              Expanded(child: Text("")),
                              IconButton(
                                icon: Icon(Icons.favorite_border),
                                color: globalColors.classicBlue,
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.monetization_on),
                                color: globalColors.classicBlue,
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.screen_share),
                                color: globalColors.classicBlue,
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Image(
                            image: AssetImage("${peopleList[index].coverImage}"),
                            width: 150,
                            height: 150,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${peopleList[index].title}",
                            style: TextStyle(
                              fontFamily: 'Nanum',
                              color: globalColors.classicBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${peopleList[index].summary}",
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
