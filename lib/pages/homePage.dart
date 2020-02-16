import 'package:flutter/material.dart';
import 'package:music_app/components/textButton.dart';
import 'package:imagebutton/imagebutton.dart';

class homePage extends StatefulWidget {
  homePage({Key key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  List<String> gridImgs = ["assets/gridSample1.png", "assets/gridSample2.png", "assets/gridSample3.png", "assets/gridSample4.png",
                      "assets/gridSample5.png","assets/gridSample6.png","assets/gridSample7.png","assets/gridSample8.png",
                      "assets/gridSample9.png","assets/gridSample10.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Card(
                  elevation: 5.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/beenzinoProfile.jpg'),
                          backgroundColor: Colors.transparent,
                        ),
                        title: Text('빈지노 님이 게시물을 올렸습니다'),
                      ),
                      Text(
                        'Boogie on & on',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Nanum'
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon:Icon(Icons.arrow_left),
                            onPressed: () {},
                          ),
                          Expanded(
                            child: ImageButton(
                              children: <Widget>[],
                              width: 130,
                              height: 130,
                              paddingTop: 5,
                              pressedImage: Image.asset(
                                "assets/beenzinoAlbum.jpg",
                              ),
                              unpressedImage: Image.asset("assets/beenzinoAlbum.jpg"),
                              onTap: () {},
                            ),
                          ),
                          IconButton(
                            icon:Icon(Icons.arrow_right),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  SizedBox(width: 5),
                  Text(
                    'Most Liked Today',
                    style: TextStyle(
                      fontFamily: 'Nanum',
                      color: const Color(0xFF34558b),
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  Expanded(child:Text(''),),
                  TextButton(
                    buttonName:'더보기',
                    onPressed: () {},
                    buttonTextStyle: TextStyle(
                      fontFamily: 'Nanum',
                      color: const Color(0xFF34558b),
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.builder(
                      itemCount: gridImgs.length,
                      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
                      itemBuilder: (BuildContext context, int index){
                        return Image.asset(gridImgs[index]);
                      },
                    ),
                  )
                ),
              ),

              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  SizedBox(width: 5),
                  Text(
                    'Most Reposted Today',
                    style: TextStyle(
                      fontFamily: 'Nanum',
                      color: const Color(0xFF34558b),
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  Expanded(child:Text(''),),
                  TextButton(
                    buttonName:'더보기',
                    onPressed: () {},
                    buttonTextStyle: TextStyle(
                      fontFamily: 'Nanum',
                      color: const Color(0xFF34558b),
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.builder(
                      itemCount: gridImgs.length,
                      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
                      itemBuilder: (BuildContext context, int index){
                        return Image.asset(gridImgs[9-index]);
                      },
                    ),
                  )
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
