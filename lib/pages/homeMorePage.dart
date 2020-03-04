import 'package:flutter/material.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:music_app/data/homeCarouselList.dart';

class HomeMorePage extends StatelessWidget {
  HomeMorePage({this.homeCarouselList}) ;
  final List<HomeCarouselList> homeCarouselList;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: homeCarouselList.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(homeCarouselList[index].avatar),
              background: Container(
                alignment: AlignmentDirectional.centerEnd,
                color: Colors.red,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
              onDismissed: (direction) {
              },
              direction: DismissDirection.endToStart,
              child: Card(
                elevation: 5,
                child: new InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(homeCarouselList[index].albumCover),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "${homeCarouselList[index].artistName}",
                              style: TextStyle(
                                fontFamily: 'Nanum',
                                color: globalColors.classicBlue,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              "${homeCarouselList[index].albumTitle}",
                              style: TextStyle(
                                fontFamily: 'Nanum',
                                color: globalColors.classicBlue,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
      );
  }
}
