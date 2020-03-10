import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:music_app/components/globalColors.dart' as globalColors;
import 'package:step_progress_indicator/step_progress_indicator.dart';

Widget musicPlaySliceUpPanel(double sliderHeight) {
  return SlidingUpPanel(
    color: Colors.white,
    minHeight: kBottomNavigationBarHeight,
    maxHeight: sliderHeight,
    panel: mainSliderPanel(),
    collapsed: collapsedSlider(),
  );
}

Widget mainSliderPanel() {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: globalColors.classicBlue,
      title: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/beenzinoProfile.jpg'),
            backgroundColor: Colors.transparent,
            radius: 18,
          ),
          SizedBox(width: 15),
          Text(
            "빈지노",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Nanum',
              fontSize: 20.0,
            ),
          ),
          SizedBox(width: 5),
          Text(
            "24:26",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Nanum',
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          color: Colors.white,
          icon: Icon(Icons.keyboard_arrow_down),
          onPressed: () {},
        ),
      ],
    ),
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/beenzinoAlbum.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Text("")),
            Container(
              color: Colors.grey.withOpacity(0.5),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Boogie on & on",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nanum',
                        fontSize: 40.0,
                      ),
                    ),
                  ],
                ),
              )
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 25,
                  child: IconButton(
                    iconSize: 50,
                    padding: EdgeInsets.all(0),
                    color: Colors.white,
                    icon: Icon(Icons.arrow_left),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 50,
                  child: IconButton(
                    iconSize: 80,
                    padding: EdgeInsets.all(0),
                    color: Colors.white,
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 25,
                  child: IconButton(
                    iconSize: 50,
                    padding: EdgeInsets.all(0),
                    color: Colors.white,
                    icon: Icon(Icons.arrow_right),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            StepProgressIndicator(
              totalSteps: 100,
              currentStep: 32,
              size: 6,
              padding: 0,
              selectedColor: Colors.red,
              unselectedColor: Colors.white,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    color: Colors.grey.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              IconButton(
                                iconSize: 30,
                                padding: EdgeInsets.all(0),
                                color: Colors.white,
                                icon: Icon(Icons.favorite),
                                onPressed: () {},
                              ),
                              Text(
                                "1125",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              IconButton(
                                iconSize: 30,
                                padding: EdgeInsets.all(0),
                                color: Colors.white,
                                icon: Icon(Icons.message),
                                onPressed: () {},
                              ),
                              Text(
                                "358",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              IconButton(
                                iconSize: 30,
                                padding: EdgeInsets.all(0),
                                color: Colors.white,
                                icon: Icon(Icons.info),
                                onPressed: () {},
                              ),
                              Text(
                                "~01.21",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              IconButton(
                                iconSize: 30,
                                padding: EdgeInsets.all(0),
                                color: Colors.white,
                                icon: Icon(Icons.person),
                                onPressed: () {},
                              ),
                              Text(
                                "~01.02",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    ),
  );
}

Widget collapsedSlider() {
  return Container(
    color: Colors.blueGrey,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/beenzinoAlbum.jpg'),
                backgroundColor: Colors.transparent,
                radius: 18,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 45,
          child: Text(
            "빈지노 (Beenzino) - Boogie on & on",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          flex: 35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                padding: EdgeInsets.all(0),
                color: Colors.white,
                icon: Icon(Icons.arrow_left),
                onPressed: () {},
              ),
              IconButton(
                padding: EdgeInsets.all(0),
                color: Colors.white,
                icon: Icon(Icons.play_arrow),
                onPressed: () {},
              ),
              IconButton(
                padding: EdgeInsets.all(0),
                color: Colors.white,
                icon: Icon(Icons.arrow_right),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}